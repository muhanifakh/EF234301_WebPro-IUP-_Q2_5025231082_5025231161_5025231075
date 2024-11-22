
CREATE DATABASE IF NOT EXISTS medical_center;

USE medical_center;

-- Create the `users` table
CREATE TABLE `users` (
    `id` BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `email` VARCHAR(255) NOT NULL UNIQUE,
    `password` VARCHAR(255) NOT NULL,
    `role` ENUM('patient', 'doctor', 'admin') DEFAULT 'patient',
    `created_at` TIMESTAMP NULL DEFAULT NULL,
    `updated_at` TIMESTAMP NULL DEFAULT NULL
);

-- Add a statement to drop the `users` table (optional, for rollback purposes)
DROP TABLE IF EXISTS `users`;

-- Create the `departments` table
CREATE TABLE `departments` (
    `id` BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `created_at` TIMESTAMP NULL DEFAULT NULL,
    `updated_at` TIMESTAMP NULL DEFAULT NULL
);

-- Drop the `departments` table (optional, for rollback purposes)
DROP TABLE IF EXISTS `departments`;


-- Create the `doctors` table
CREATE TABLE `doctors` (
    `id` BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `name` VARCHAR(255) NOT NULL,
    `department_id` BIGINT UNSIGNED NOT NULL,
    `rating` DECIMAL(3, 2) DEFAULT 0,
    `created_at` TIMESTAMP NULL DEFAULT NULL,
    `updated_at` TIMESTAMP NULL DEFAULT NULL,
    FOREIGN KEY (`department_id`) REFERENCES `departments`(`id`) ON DELETE CASCADE
);

-- Drop the `doctors` table (optional, for rollback purposes)
DROP TABLE IF EXISTS `doctors`;

-- Create the `appointments` table
CREATE TABLE `appointments` (
    `id` BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `user_id` BIGINT UNSIGNED NOT NULL,
    `patient_name` VARCHAR(255) NOT NULL,
    `department_id` BIGINT UNSIGNED NOT NULL,
    `doctor_id` BIGINT UNSIGNED NOT NULL,
    `phone_number` VARCHAR(255) NOT NULL,
    `appointment_date` DATE NOT NULL,
    `created_at` TIMESTAMP NULL DEFAULT NULL,
    `updated_at` TIMESTAMP NULL DEFAULT NULL
);

-- Drop the `appointments` table (optional, for rollback purposes)
DROP TABLE IF EXISTS `appointments`;

-- Create the `doctor_ratings` table
CREATE TABLE `doctor_ratings` (
    `id` BIGINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    `user_id` BIGINT UNSIGNED NOT NULL,
    `doctor_id` BIGINT UNSIGNED NOT NULL,
    `rating` INT NOT NULL CHECK (`rating` BETWEEN 1 AND 5),
    `feedback` TEXT NULL,
    `created_at` TIMESTAMP NULL DEFAULT NULL,
    `updated_at` TIMESTAMP NULL DEFAULT NULL,
    FOREIGN KEY (`user_id`) REFERENCES `users`(`id`) ON DELETE CASCADE,
    FOREIGN KEY (`doctor_id`) REFERENCES `doctors`(`id`) ON DELETE CASCADE
);

-- Drop the `doctor_ratings` table (optional, for rollback purposes)
DROP TABLE IF EXISTS `doctor_ratings`;

-- Create the `cache` table
CREATE TABLE `cache` (
    `key` VARCHAR(255) NOT NULL UNIQUE,
    `value` TEXT NOT NULL,
    `expiration` INT NOT NULL
);

-- Drop the `cache` table (optional, for rollback purposes)
DROP TABLE IF EXISTS `cache`;

-- Create the `sessions` table
CREATE TABLE `sessions` (
    `id` VARCHAR(255) NOT NULL PRIMARY KEY,
    `user_id` BIGINT UNSIGNED NULL,
    `ip_address` VARCHAR(45) NULL,
    `user_agent` TEXT NULL,
    `payload` LONGTEXT NOT NULL,
    `last_activity` INT NOT NULL,
    INDEX (`user_id`),
    INDEX (`last_activity`)
);

-- Drop the `sessions` table (optional, for rollback purposes)
DROP TABLE IF EXISTS `sessions`;

-- Create the `general_ratings` table
CREATE TABLE `general_ratings` (
    `rating` INT NOT NULL,
    `created_at` TIMESTAMP NULL DEFAULT NULL,
    `updated_at` TIMESTAMP NULL DEFAULT NULL
);

-- Drop the `general_ratings` table (optional, for rollback purposes)
DROP TABLE IF EXISTS `general_ratings`;