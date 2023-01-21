package at.htl.boundary;

import javax.inject.Inject;
import javax.transaction.Transactional;
import javax.ws.rs.*;
import javax.ws.rs.core.MediaType;
import javax.ws.rs.core.MultivaluedMap;
import javax.ws.rs.core.Response;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;
import java.util.Map;

import at.htl.model.entity.LessonEntity;
import at.htl.model.entity.PictureEntity;
import at.htl.lesson.LessonRepo;
import at.htl.picture.PictureRepo;
import org.apache.commons.io.IOUtils;
import org.jboss.resteasy.plugins.providers.multipart.InputPart;
import org.jboss.resteasy.plugins.providers.multipart.MultipartFormDataInput;


@Path("/picture")
@Produces(MediaType.APPLICATION_JSON)
@Consumes(MediaType.APPLICATION_JSON)
public class PictureResource {
    @Inject
    PictureRepo pictureRepo;
    @Inject
    LessonRepo lessonRepo;

    @GET
    @Path("/getAll")
    public List<PictureEntity> getAllPictures() {
        return this.pictureRepo.findAll().stream().toList();
    }


    @PUT
    @Path("/addPictureToLesson/{pictureName}/{lessonId}")
    @Transactional
    public Response addPic(@PathParam("pictureName") String pictureName, @PathParam("lessonId") long id) {
        LessonEntity lesson = lessonRepo.findById(id);
        PictureEntity picture = pictureRepo.findById(pictureName);
        lesson.getPictureList().add(picture);
        return Response.ok().build();
    }


    @GET
    @Path("/get/{fileName}")
    @Produces({"image/png"})
    public Response downloadFile(@PathParam("fileName") String fileName) {

        File file = new File("src/main/resources/img/" + fileName);
        if (!file.exists()) {
            throw new RuntimeException("File not found: src/main/resources/img/" + fileName);
        }
        Response.ResponseBuilder res = Response.ok((Object) file);
        res.header("Content-Disposition", "inline;filename=" + fileName);
        return res.build();
    }

    @POST
    @Path("/upload")
    @Consumes("multipart/form-data")
    @Transactional
    public Response uploadFile(MultipartFormDataInput input) {

        String fileName = "";
        String postURL;
        Map<String, List<InputPart>> uploadForm = input.getFormDataMap();
        List<InputPart> inputParts = uploadForm.get("uploadedFile");

        for (InputPart inputPart : inputParts) {

            try {
                MultivaluedMap<String, String> header = inputPart.getHeaders();
                fileName = getFileName(header);
                InputStream inputStream = inputPart.getBody(InputStream.class, null);
                System.out.println(fileName);
                postURL = "http://localhost:8080/picture/get/" + fileName;
                System.out.println(postURL);
                PictureEntity picture = new PictureEntity(postURL, "");
                pictureRepo.persist(picture);

                byte[] bytes = IOUtils.toByteArray(inputStream);
                fileName = "src/main/resources/img/" + fileName;
                System.out.println(fileName + " . Filename");

                writeFile(bytes, fileName);
                System.out.println("Done");

            } catch (IOException e) {
                e.printStackTrace();
            }
        }

        return Response.status(200).entity("{\"message\":\"uploadFile is called, Uploaded file name : " + fileName + "\"}").build();
    }

    private String getFileName(MultivaluedMap<String, String> header) {

        String[] contentDisposition = header.getFirst("Content-Disposition").split(";");

        for (String filename : contentDisposition) {
            if ((filename.trim().startsWith("filename"))) {
                String[] name = filename.split("=");
                String finalFileName = name[1].trim().replaceAll("\"", "");
                return finalFileName;
            }
        }
        return "unknown";
    }

    private void writeFile(byte[] content, String filename) throws IOException {
        File file = new File(filename);

        if (!file.exists()) {
            file.createNewFile();
            System.out.println("success");
        }
        FileOutputStream fos = new FileOutputStream(file);
        fos.write(content);
        fos.flush();
        fos.close();
    }
}
