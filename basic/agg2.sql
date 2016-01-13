SELECT firstname, surname, joindate FROM cd.members ORDER BY joindate DESC LIMIT 1;
-- Note that this approach does not cover the extremely unlikely eventuality of two people joining at the exact same time :-).
