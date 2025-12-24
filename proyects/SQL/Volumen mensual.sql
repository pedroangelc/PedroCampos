SELECT
MAX(Fecha) AS fecha_fin_mes
,
  MES,
  ROUND(SUM(Kms), 2) AS distancia_total_km,
  COUNT(ID_SESION) AS sesiones,
  Minutos
FROM RENDIMIENTO_2025
GROUP BY MES
ORDER BY FECHA;