;; Diary
;; M-x calendar
;;    d     display diary for selected date
;;    i d   insert entry at selected date
;;    i c   insert cyclic entry
(setq diary-file "~/.org/diary")
(setq view-diary-entries-initially t
      mark-diary-entries-in-calendar t
      number-of-diary-entries 7)
;; (add-hook 'diary-display-hook 'fancy-diary-display)
(add-hook 'today-visible-calendar-hook 'calendar-mark-today)
(setq calendar-week-start-day 1
      calendar-day-name-array
      ["Dimanche" "Lundi" "Mardi"
       "Mercredi" "Jeudi" "Vendredi" "Samedi"]
      calendar-month-name-array
      ["Janvier" "Février" "Mars" "Avril"
       "Mai" "Juin" "Juillet" "Août" "Septembre"
       "Octobre" "Novembre" "Décembre"])
(add-hook 'diary-hook 'appt-make-list)
(display-time)
(diary 0)
(european-calendar)

(provide 'init-diary)
