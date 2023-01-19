package at.htl.game;


import at.htl.model.pojo.Game;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

import javax.websocket.EncodeException;
import javax.websocket.Encoder;
import javax.websocket.EndpointConfig;

public class GameEncoder implements Encoder.Text<Game> {

    ObjectMapper objectMapper = new ObjectMapper();

    @Override
    public String encode(Game game) throws EncodeException {
        try {
            return objectMapper.writeValueAsString(game);
        } catch (JsonProcessingException e) {
            throw new EncodeException(game, e.getMessage());
        }
    }

    @Override
    public void init(EndpointConfig endpointConfig) {

    }

    @Override
    public void destroy() {

    }
}
