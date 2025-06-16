;; Exercise 1

(define (distance-to-origin x y)
  (sqrt (+ (* x x) (* y y))))

(distance-to-origin 3 4)

;; Exercise 2

(define (underscored s1 s2)
  (string-append s1 "_" s2))

(underscored "alam" "asyarie")

;; Exercise 3

(define (underscored-at s i)
  (string-append
   (substring s 0 i)
   "_"
   (substring s i)))

(underscored-at "alamasyarie" 4)

;; Exerciser 4

(define (delete-at s i)
  (string-append
   (substring s 0 (- i 1))
   (substring s i)))

(delete-at "alamasyarie" 4)

;; Exercise 5
(require 2htdp/image)

(define (tree scale)
  (overlay/xy
   (rectangle 20 100 "solid" "white")
   (- 0 (/ scale 2))
   (- 0 (/ scale 2))
   (triangle scale "solid" "green")))

(tree 120)

;; Exercise 6

(define cat .)

(define (image-pixels img)
  (* (image-width img) (image-height img)))

(image-pixels cat)

;; Exercise 7
(define sunny? #true)
(define friday? #false)

(define (go-to-mall? wheather day)
  (or day (not wheather)))

(go-to-mall? sunny? friday?)

;; Exercise 8
(define (is-tall? img)
  (> (image-height img) (image-width img)))

(is-tall? cat)

;; Exercise 9
(define (in thing)
  (cond [(string? thing) (string-length thing)]
        [(image? thing) (* (image-height thing) (image-width thing))]
        [(number? thing) (abs thing)]
        [else (if thing 10 20)]))

(in 23)
(in .)
(in "saya")
(in #false)
(in #true)

;; Exercise 11
; same with exercise 01

;; Exercise 12
(define (cube-vol l)
  (* (cube-area l) l))

(define (cube-area l)
  (* l l))

(cube-vol 4)

;; Exercise 13
(define (first-string s)
  (substring s 0 1))

(first-string "alam:")

;; Exercise 14
(define (last-string s)
  (substring s (- (string-length s) 1)))

(last-string "alam")

;; Exercise 15
(define (==> sunny friday)
  (if (and (not sunny) friday) #true #false))

(==> #true #true)
(==> #true #false)
(==> #false #true)
(==> #false #false)

;; Exercise 17
(define (image-classify img)
  (cond
    [(> (image-width img) (image-height img)) "wide"]
    [(< (image-width img) (image-height img)) "tall"]
    [(= (image-width img) (image-height img)) "square"]))

(image-classify cat)


