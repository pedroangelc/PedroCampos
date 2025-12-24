SELECT
  COUNT(*) AS Sesiones,
  ROUND(SUM(Kms), 2) AS total_kms,
  ROUND(AVG(Kms), 2) AS kms_prom_por_sesion,
  SUM(Minutos) AS total_minutos,
  ROUND(AVG(Minutos), 1) AS mins_prom_por_sesion,
  ROUND(SUM(Kms) / (SUM(Minutos) / 60.0), 2) AS vel_media_kmh,
  ROUND(MAX(Kms), 2) AS max_kms_una_sesion,
  ROUND(MIN(Kms), 2) AS min_kms_una_sesion
FROM RENDIMIENTO_2025
WHERE Minutos > 0;
