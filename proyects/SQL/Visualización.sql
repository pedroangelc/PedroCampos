SELECT
  Fecha,
  Mes,
  COUNT(*) AS sesiones,
  ROUND(SUM(Kms), 2) AS kms_totales,
  SUM(Minutos) AS minutos_totales,
  ROUND(AVG(Kms / (Minutos / 60.0)), 2) AS vel_media_kmh
FROM RENDIMIENTO_2025
WHERE Minutos > 0
GROUP BY Fecha, Mes
ORDER BY Fecha;
