SELECT
  COUNT(*) AS total_sesiones,
  ROUND(SUM(Kms), 2) AS distancia_total_km,
  ROUND(AVG(Kms), 2) AS distancia_promedio_km,
  ROUND(AVG(ESFUERZO), 2) AS esfuerzo_promedio
FROM RENDIMIENTO_2025;
