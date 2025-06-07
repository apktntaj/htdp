
#_{:clj-kondo/ignore [:namespace-name-mismatch]}
(ns fixed-size-data.exercises)

; EXCERCISE 1.1
;; Write down an expression that computes the distance of this point to the origin.

(defn distance-to-origin [x y]
  (Math/sqrt (+ (* x x) (* y y))))

(distance-to-origin 3 4) ; => 5.0

;; EXCERCISE 1.2
;; Add "_" between two strings.


(defn underscored [s1 s2]
  (str s1 "_" s2))

(underscored "hello" "world") ; => "hello_world"

;; EXCERCISE 1.3
;; create an expression using string primitives that adds "_" at position i

(defn underscored-at [string at]
  (str (subs string 0 at) "_" (subs string at)))

(underscored-at "hello" 2) ; => "he_llo"

;; EXCERCISE 1.4
;; create an expression using string primitives that adds deleted at position i

(defn delete-at [s i]
  (str (subs s 0 (dec i)) (subs s i)))

(delete-at "hello" 2) ; => "hllo"


;; Not idiomatic solution
(defn delete-at-bad [index string]
  (str (subs string 0 index) (subs string (inc index))))

;; Idiomatic solution
(defn delete-at-good [string index]
  (str (subs string 0 index) (subs string index)))

(delete-at-bad 2 "hello") ; => "hllo"