package at.htl.game;

import at.htl.model.pojo.Game;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.websocket.DecodeException;
import javax.websocket.Decoder;
import javax.websocket.EndpointConfig;

public class GameDecoder implements Decoder.Text<Game> {
    ObjectMapper objectMapper = new ObjectMapper();

    @Override
    public Game decode(String s) throws DecodeException {
        try {
            return objectMapper.readValue(s, Game.class);
        } catch (JsonProcessingException e) {
            throw new DecodeException(s, e.getMessage());
        }
    }

    @Override
    public boolean willDecode(String s) {
        try {
            objectMapper.readValue(s, Game.class);
        } catch (JsonProcessingException e) {
            return false;
        }
        return true;
    }

    @Override
    public void init(EndpointConfig endpointConfig) {

    }

    @Override
    public void destroy() {

    }
}
