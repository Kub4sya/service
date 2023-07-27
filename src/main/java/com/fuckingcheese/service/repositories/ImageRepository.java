package com.fuckingcheese.service.repositories;

import com.fuckingcheese.service.models.Image;
import org.springframework.data.jpa.repository.JpaRepository;

public interface ImageRepository extends JpaRepository<Image, Long> {

}
