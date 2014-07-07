-ifdef(TEST).
-define(LOG_INFO(F), _ = [F]).
-define(LOG_ERROR(F), _ = [F]).
-define(LOG_INFO_FORMAT(F, A), _ = [F, A]).
-define(LOG_ERROR_FORMAT(F, A), _ = [F, A]).
-else.
-define(LOG_INFO(F),
	lager:info(F)).
-define(LOG_ERROR(F),
	lager:error(F)).
-define(LOG_INFO_FORMAT(F, A),
	lager:info(F, A)).
-define(LOG_ERROR_FORMAT(F, A),
	lager:error(F, A)).
-endif.
