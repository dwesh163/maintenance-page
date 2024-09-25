import express from 'express';
import path from 'path';
import { fileURLToPath } from 'url';

const app = express();

const __filename = fileURLToPath(import.meta.url);
const __dirname = path.dirname(__filename);

const distPath = path.join(__dirname, 'dist');

app.get('/', (req, res) => {
	res.status(503).sendFile(path.join(distPath, 'index.html'));
});

app.use(express.static(distPath));

app.use((req, res) => {
	res.status(503).sendFile(path.join(distPath, 'index.html'));
});

app.listen(8080, () => {
	console.log('Server running on port 8080');
});
