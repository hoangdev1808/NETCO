import {
	src,
	dest
} from "gulp";
import plumber from "gulp-plumber";
import uglifyBabel from "gulp-terser";
import babel from "gulp-babel";
import rename from "gulp-rename";
import sourcemap from "gulp-sourcemaps";

export const jsTask = () => {
	return src(["src/js/*.js",
	])
		.pipe(plumber())
		.pipe(babel({
			presets: ["@babel/preset-env"]
		}))
		.pipe(uglifyBabel())
		.pipe(rename("main.min.js"))
		.pipe(sourcemap.write("."))
		.pipe(dest("_dist/js"))
}

module.exports = jsTask;
