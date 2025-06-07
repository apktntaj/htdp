;; The first three lines of this file were inserted by DrRacket. They record metadata
;; about the language level of this file in a form that our tools can easily process.
#reader(lib "htdp-beginner-reader.ss" "lang")((modname exercises) (read-case-sensitive #t) (teachpacks ()) (htdp-settings #(#t constructor repeating-decimal #f #t none #f () #f)))
;; Exercise 1.1

(define (distance-to-origin x y)
  (sqrt (+ (* x x) (* y y))))

(distance-to-origin 3 4)

;; Exercise 1.2

(define (underscored s1 s2)
  (string-append s1 "_" s2))

(underscored "alam" "asyarie")

;; Exercise 1.3

(define (underscored-at s i)
  (string-append
   (substring s 0 i)
   "_"
   (substring s i)))

(underscored-at "alamasyarie" 4)

;; Exerciser 1.4

(define (delete-at s i)
  (string-append
   (substring s 0 (- i 1))
   (substring s i)))

(delete-at "alamasyarie" 4)