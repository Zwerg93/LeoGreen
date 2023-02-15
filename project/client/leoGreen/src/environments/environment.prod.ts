export const environment = {
  production: true,
  API_URL: '/m.pouget/api',
  QR_URL: '/m.pouget',
  WS_URL: 'wss://student.cloud.htl-leonding.ac.at/m.pouget/api/quiz-game-websocket',
  webSockets: {
    maxReconnectAttempts: 8,
    reconnectAttemptDelay: 5000
  }
};
