# 1. Base image from your original command
FROM ghcr.io/jiotv-go/jiotv_go

# 2. Inject environment variables (-e flags)
ENV TZ=Asia/Kolkata
ENV JIOTV_DRM=true
ENV JIOTV_PATH_PREFIX=/app/.jiotv_go

# 3. Match Vercel's dynamic port mapping
# Vercel handles the routing layer; your app must listen to the $PORT env variable.
EXPOSE 80
