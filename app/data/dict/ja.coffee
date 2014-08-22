module.exports =
  "E_ERROR":
    description: "重大な実行時エラー。これは、メモリ確保に関する問題のように復帰で きないエラーを示します。スクリプトの実行は中断されます。",
    note: ""

  "E_WARNING":
    description: "実行時の警告 (致命的なエラーではない)。スクリプトの実行は中断さ れません。 ",
    note: ""

  "E_PARSE":
    description: "コンパイル時のパースエラー。パースエラーはパーサでのみ生成されま す。 ",
    note: ""

  "E_NOTICE":
    description: "実行時の警告。エラーを発しうる状況に遭遇したことを示す。 ただし通常のスクリプト実行の場合にもこの警告を発することがありうる。 ",
    note: ""

  "E_CORE_ERROR":
    description: "PHPの初期始動時点での致命的なエラー。E_ERRORに 似ているがPHPのコアによって発行される点が違う。 ",
    note: ""

  "E_CORE_WARNING":
    description: "（致命的ではない）警告。PHPの初期始動時に発生する。 E_WARNINGに似ているがPHPのコアによって発行される 点が違う。 ",
    note: ""

  "E_COMPILE_ERROR":
    description: "コンパイル時の致命的なエラー。E_ERRORに 似ているがZendスクリプティングエンジンによって発行される点が違う。 ",
    note: ""

  "E_COMPILE_WARNING":
    description: "コンパイル時の警告（致命的ではない）。E_WARNINGに 似ているがZendスクリプティングエンジンによって発行される点が違う。",
    note: ""

  "E_USER_ERROR":
    description: "ユーザーによって発行されるエラーメッセージ。E_ERROR に似ているがPHPコード上でtrigger_error()関数を 使用した場合に発行される点が違う。 ",
    note: ""

  "E_USER_WARNING":
    description: "ユーザーによって発行される警告メッセージ。E_WARNING に似ているがPHPコード上でtrigger_error()関数を 使用した場合に発行される点が違う。 ",
    note: ""

  "E_USER_NOTICE":
    description: "ユーザーによって発行される注意メッセージ。E_NOTICEに に似ているがPHPコード上でtrigger_error()関数を 使用した場合に発行される点が違う。 ",
    note: ""

  "E_STRICT":
    description: "コードの相互運用性や互換性を維持するために PHP がコードの変更を提案する。"
    note: "PHP 5 より"

  "E_RECOVERABLE_ERROR":
    description: "キャッチできる致命的なエラー。危険なエラーが発生したが、 エンジンが不安定な状態になるほどではないことを表す。 ユーザー定義のハンドラでエラーがキャッチされなかった場合 (set_error_handler() も参照ください) は、 E_ERROR として異常終了する。 ",
    note: "PHP 5.2.0 より"

  "E_DEPRECATED":
    description: "実行時の注意。これを有効にすると、 将来のバージョンで動作しなくなるコードについての警告を受け取ることができる。 ",
    note: "PHP 5.3.0 より"

  "E_USER_DEPRECATED":
    description: "ユーザー定義の警告メッセージ。これは E_DEPRECATED と同等だが、 PHP のコード上で関数 trigger_error() によって作成されるという点が異なる。 ",
    note: "PHP 5.3.0 より"
