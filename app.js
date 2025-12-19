import bodyParser from 'body-parser';
import express from 'express';

import eventRoutes from './routes/events.js';
import dbPromise from './data/database.js';

const app = express();

app.use(bodyParser.json());

app.use(eventRoutes);

await dbPromise;
app.listen(process.env.PORT);
