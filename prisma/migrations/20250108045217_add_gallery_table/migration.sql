/*
  Warnings:

  - The values [PG,SG,SF,PF,C] on the enum `User_position` will be removed. If these variants are still used in the database, this will fail.

*/
-- AlterTable
ALTER TABLE `user` MODIFY `position` ENUM('NONE', 'GUARD', 'FORWARD', 'CENTER') NOT NULL DEFAULT 'NONE';
