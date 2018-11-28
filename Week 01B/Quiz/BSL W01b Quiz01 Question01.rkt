;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname |BSL W1b Quiz1 Question1|) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
(require 2htdp/image)
;;PROBLEM:
;;Design a function that consumes two images and produces true if the first is larger than the second.

;; HtDF Recipe
;; 1. Signature, purpose and stub.
;; 2. Define examples, wrap each in check-expect.
;; 3. Template and inventory.
;; 4. Code the function body.
;; 5. Test and debug until correct

;; 1. Signatrure, Purpose, and Stub.
;; Image Image -> Boolean
;; Input 2 images and produce true if the first image is larger than the second image.
;;(define (larger img1 img2) false)

;; 2. Define examples, wrap each in check-expect.
(check-expect (larger (square 10 "solid" "red") (square 20 "solid" "red")) false)
(check-expect (larger (square 20 "solid" "red") (square 10 "solid" "red")) true)
(check-expect (larger (square 20 "solid" "red") (square 20 "solid" "red")) false)

;; 3. Template and inventory.
;;(define (larger img1 img2)
;;  (... img1 img2))

;; 4. Code the function body.
(define (larger img1 img2)
  (> (image-height img1) (image-height img2)))