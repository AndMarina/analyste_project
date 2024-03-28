SELECT structural_unit_id, full_title, LENGTH(full_title)
FROM structural_unit
ORDER BY LENGTH(full_title) desc