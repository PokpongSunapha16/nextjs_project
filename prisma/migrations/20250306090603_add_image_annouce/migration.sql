/*
  Warnings:

  - You are about to drop the column `imageBase64` on the `featuredannouncement` table. All the data in the column will be lost.
  - Added the required column `image` to the `FeaturedAnnouncement` table without a default value. This is not possible if the table is not empty.

*/
-- AlterTable
ALTER TABLE `featuredannouncement` DROP COLUMN `imageBase64`,
    ADD COLUMN `image` LONGTEXT NOT NULL;
