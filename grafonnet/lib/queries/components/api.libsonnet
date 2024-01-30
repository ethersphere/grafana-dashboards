{
bee_api_content_api_duration_sum_get:{query:"bee_api_content_api_duration_sum{%(selector)s,method=\"GET\"}/bee_api_content_api_duration_count{%(selector)s,method=\"GET\"}",legend:"{{filesize}} bytes {{instance}}"},
bee_api_content_api_duration_sum_post:{query:"bee_api_content_api_duration_sum{%(selector)s,method=\"POST\"}/bee_api_content_api_duration_count{%(selector)s,method=\"POST\"}",legend:"{{filesize}} bytes {{instance}}"},
increase_bee_api_ping_request_count:{query:"increase(bee_api_ping_request_count{%(selector)s}[$interval])",legend:"api_ping_request_rate ({{pod}})"},
increase_bee_api_request_count:{query:"increase(bee_api_request_count{%(selector)s}[$interval])",legend:"api_request_rate ({{pod}})"},
increase_bee_api_response_code_count_2xx:{query:"increase(bee_api_response_code_count{%(selector)s,code=~\"2..\"}[$interval])",legend:"{{le}}"},
increase_bee_api_response_code_count_3xx:{query:"increase(bee_api_response_code_count{%(selector)s,code=~\"3..\"}[$interval])",legend:"{{le}}"},
increase_bee_api_response_code_count_4xx:{query:"increase(bee_api_response_code_count{%(selector)s,code=~\"4..\"}[$interval])",legend:"{{le}}"},
increase_bee_api_response_code_count_5xx:{query:"increase(bee_api_response_code_count{%(selector)s,code=~\"5..\"}[$interval])",legend:"{{le}}"},
increase_bee_api_response_duration_seconds_bucket:{query:"increase(bee_api_response_duration_seconds_bucket{%(selector)s}[$interval])",legend:"{{le}}"},
}
