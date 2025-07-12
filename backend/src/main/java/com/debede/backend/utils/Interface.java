package com.debede.backend.utils;

import java.util.HashMap;
import java.util.Map;

public class Interface {
    public static Map<String, Object> responseWithEntity(String msg, Object entity, String entityType) {
                Map<String, Object> response = new HashMap<>();
                response.put("mensaje", msg);
                response.put(entityType, entity);
                return response;
    }
}