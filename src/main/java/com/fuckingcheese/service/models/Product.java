package com.fuckingcheese.service.models;

import lombok.*;

@Data
@AllArgsConstructor
public class Product {
    private Long id;
    private String title;
    private String description;
    private String condition;
    private int price;
    private String city;
    private String author;
}
