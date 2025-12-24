SELECT
  Ruta,
  COUNT(*) AS total_sesiones,
  ROUND(SUM(Kms), 2) AS kms_totales,
  ROUND(AVG(Kms), 2) AS kms_promedio,
  SUM(Minutos) AS minutos_totales,
  ROUND(AVG(Minutos), 1) AS minutos_promedio,
  ROUND(AVG(Kms / (Minutos / 60.0)), 2) AS vel_media_kmh,
  MAX(Kms) AS max_kms_en_una_sesion,
  MIN(Kms) AS min_kms_en_una_sesion
FROM RENDIMIENTO_2025
WHERE Minutos > 0
GROUP BY Ruta
ORDER BY kms_totales DESC;
