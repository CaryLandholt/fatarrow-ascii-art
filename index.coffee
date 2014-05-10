SPACER = '     '

chalk  = require 'chalk'

green  = chalk.green
yellow = chalk.yellow

logo = do ->
	pad = (str, length) ->
		padded  = str
		padded += ' ' while padded.length < length

		padded

	arrow = '''
	          __
	  ______  \\ \\
	 /_____/   \\ \\
	 /_____/   / /
	          /_/

	'''

	fatarrow = '''
	  _____        __
	_/ ____\\____ _/  |______ ______________  ______  _  __
	\\   __\\\\__  \\\\   __\\__  \\\\_  __ \\_  __ \\/  _ \\ \\/ \\/ /
	 |  |   / __ \\|  |  / __ \\|  | \\/|  | \\(  <_> )     /
	 |__|  (____  /__| (____  /__|   |__|   \\____/ \\/\\_/
	            \\/          \\/
	'''

	arrowLines     = arrow.split '\n'
	fatarrowLines  = fatarrow.split '\n'
	lines          = fatarrowLines.length - 1
	maxArrowLength = 0

	arrowLines.forEach (line) ->
		length         = line.length
		maxArrowLength = length if length > maxArrowLength

	logoLines = for i in [0..lines]
		arrowLine           = arrowLines[i]
		fatarrowLine        = fatarrowLines[i]
		chalkedArrowLine    = green(pad(arrowLine, maxArrowLength))
		chalkedFatarrowline = yellow(fatarrowLine)
		line                = chalkedArrowLine + SPACER + chalkedFatarrowline

	logoLines.join '\n'

module.exports = logo