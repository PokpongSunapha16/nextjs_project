-- AlterTable
ALTER TABLE `notification` ADD COLUMN `expiresAt` DATETIME(3) NULL,
    ADD COLUMN `message` TEXT NULL;
