package com.billy.config;

import io.swagger.v3.oas.models.Components;
import io.swagger.v3.oas.models.OpenAPI;
import io.swagger.v3.oas.models.info.Info;
import io.swagger.v3.oas.models.info.License;
import io.swagger.v3.oas.models.security.SecurityRequirement;
import io.swagger.v3.oas.models.security.SecurityScheme;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.context.annotation.PropertySource;

import java.util.Collections;

@Configuration
@PropertySource("classpath:swagger.properties")
public class SwaggerConfig {

//    @Bean
//    public OpenAPI billyOpenAPI(@Value("${comex.api.title}") String apiTitle,
//                                   @Value("${comex.api.description}") String apiDescription) {
//        String securitySchemeName = "Api BILLY";
//        return new OpenAPI()
//                .info(new Info().title(apiTitle).license(new License().name("Proprietary")).description(apiDescription))
//                .components(new Components().addSecuritySchemes(securitySchemeName, new SecurityScheme()
//                        .name(securitySchemeName)
//                        .type(SecurityScheme.Type.HTTP)
//                        .bearerFormat("JWT")
//                        .scheme("bearer")))
//                .security(Collections.singletonList(new SecurityRequirement().addList(securitySchemeName)));
//    }


}
