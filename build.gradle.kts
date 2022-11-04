plugins {
    java
}

group = "org.example"
version = "1.0-SNAPSHOT"

repositories {
    mavenCentral()
}

dependencies {
    testImplementation("org.junit.jupiter:junit-jupiter-api:5.6.0")
    testRuntimeOnly("org.junit.jupiter:junit-jupiter-engine")
    implementation("org.flywaydb:flyway-core:9.6.0")
    implementation("org.postgresql:postgresql:42.5.0")
    implementation("org.jetbrains:annotations:13.0")
}

tasks.getByName<Test>("test") {
    useJUnitPlatform()
}