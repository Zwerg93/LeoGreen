package at.htl.model.Lesson;

public class CardDTO {
    public String title, description;
    public long id;


    public CardDTO(String title, String description, long id) {
        this.title = title;
        this.description = description;
        this.id = id;
    }
}
