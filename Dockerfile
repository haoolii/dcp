# ENV DATABASE_URL=$DATABASE_URL
# Use an official Node.js runtime as the base image
FROM node:18-alpine
# ARG DATABASE_URL
# ENV DATABASE_URL=$DATABASE_URL
# Set the working directory in the container
WORKDIR /usr/src/app

# Copy package.json and package-lock.json to the container
COPY package.json package-lock.json ./

COPY ./prisma ./prisma

# Install dependencies and cleanup
RUN npm install --production && \
    npm prune --production && \
    npm cache clean --force

# Run database migrations
# CMD ["npx", "prisma","migrate", "dev"]
# CMD ["npx", "prisma","generate"]
# RUN npx prisma migrate dev && \
#     npx prisma generate

# Copy the rest of the application files to the container
COPY . .

# Build the Next.js application for production
# RUN npm run build

# Expose the application port (assuming your app runs on port 3000)
EXPOSE 3000

# Start the application
CMD ["npm", "start"]