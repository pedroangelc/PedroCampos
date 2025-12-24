SELECT
  FECHA,
  RUTA,
  Kms,
  Tiempo,
  ROUND(Kms / (Minutos / 60.0), 2) AS vel_media_kms_h
FROM RENDIMIENTO_2025
WHERE vel_media_kms_h > 0
ORDER BY vel_media_kms_h DESC;
