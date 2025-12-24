SELECT
  MES,
  SUM(Kms) AS Suma_de_Kms,
  SUM(MINUTOS) AS tiempo_total_min,
  ROUND(AVG(MINUTOS), 1) AS tiempo_promedio_min
FROM RENDIMIENTO_2025
GROUP BY MES
ORDER BY FECHA;
