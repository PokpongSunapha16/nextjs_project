-- CreateTable
CREATE TABLE `User` (
    `id` INTEGER NOT NULL AUTO_INCREMENT,
    `profile_picture` VARCHAR(255) NOT NULL,
    `username` VARCHAR(100) NOT NULL,
    `mail` VARCHAR(150) NOT NULL,
    `password` VARCHAR(255) NOT NULL,
    `note` VARCHAR(150) NULL,
    `district` ENUM('NONE', 'MUEANG', 'WARIN', 'DET', 'TRAKAN', 'PHIBUN') NOT NULL DEFAULT 'NONE',
    `position` ENUM('NONE', 'PG', 'SG', 'SF', 'PF', 'C') NOT NULL DEFAULT 'NONE',
    `status` ENUM('ACTIVE', 'INACTIVE', 'BUSY', 'OFFLINE') NOT NULL DEFAULT 'OFFLINE',

    UNIQUE INDEX `User_username_key`(`username`),
    UNIQUE INDEX `User_mail_key`(`mail`),
    PRIMARY KEY (`id`)
) DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
