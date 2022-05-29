<?php
$OPENAI_API_KEY = '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';
header('Content-Type: text/plain');
$data =  file_get_contents('php://input');

/* $curl = curl_init();

curl_setopt_array($curl, array(
  CURLOPT_URL => 'https://api.openai.com/v1/engines/text-davinci-002/completions',
  CURLOPT_CUSTOMREQUEST => 'POST',
  CURLOPT_POSTFIELDS => $data,
  CURLOPT_HTTPHEADER => array(
    'Content-Type: application/json',
    'Authorization: Bearer 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'
  )
));

$response = curl_exec($curl); */
$prompt = $data . '\nTl;dr:';
$postfields = '{
  "prompt": "' . $prompt . '",
  "temperature": 0.85,
  "max_tokens": 600,
  "top_p": 1.0,
  "frequency_penalty": 0.0,
  "presence_penalty": 0.0
}';


$curl = curl_init();

if ($data) {
  curl_setopt_array($curl, array(
    CURLOPT_URL => 'https://api.openai.com/v1/engines/text-davinci-002/completions',
    CURLOPT_CUSTOMREQUEST => 'POST',
    CURLOPT_POSTFIELDS => $postfields,
    CURLOPT_HTTPHEADER => array(
      'Content-Type: application/json',
      'Authorization: Bearer ' . $OPENAI_API_KEY
    ),
  ));
}
/* echo $curl; */

$response = curl_exec($curl);

if ($response) {
 echo $response;
} else  http_response_code(404);

curl_close($curl);
