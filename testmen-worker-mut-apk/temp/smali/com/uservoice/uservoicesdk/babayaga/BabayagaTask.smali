.class public Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;
.super Landroid/os/AsyncTask;
.source "BabayagaTask.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field private final context:Landroid/content/Context;

.field private final event:Ljava/lang/String;

.field private final eventProps:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final uvts:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "event"    # Ljava/lang/String;
    .param p3, "uvts"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 28
    .local p4, "eventProps":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    .line 29
    iput-object p2, p0, Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;->event:Ljava/lang/String;

    .line 30
    iput-object p3, p0, Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;->uvts:Ljava/lang/String;

    .line 31
    iput-object p4, p0, Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;->eventProps:Ljava/util/Map;

    .line 32
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;->context:Landroid/content/Context;

    .line 33
    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 21
    check-cast p1, [Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;->doInBackground([Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/String;)Ljava/lang/Void;
    .locals 23
    .param p1, "args"    # [Ljava/lang/String;

    .prologue
    .line 38
    :try_start_0
    new-instance v5, Lorg/json/JSONObject;

    invoke-direct {v5}, Lorg/json/JSONObject;-><init>()V

    .line 39
    .local v5, "data":Lorg/json/JSONObject;
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/uservoice/uservoicesdk/Config;->getUserTraits()Ljava/util/Map;

    move-result-object v14

    .line 40
    .local v14, "traits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    if-eqz v14, :cond_0

    invoke-interface {v14}, Ljava/util/Map;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_0

    .line 41
    const-string v17, "u"

    new-instance v18, Lorg/json/JSONObject;

    move-object/from16 v0, v18

    invoke-direct {v0, v14}, Lorg/json/JSONObject;-><init>(Ljava/util/Map;)V

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 43
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;->eventProps:Ljava/util/Map;

    move-object/from16 v17, v0

    if-eqz v17, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;->eventProps:Ljava/util/Map;

    move-object/from16 v17, v0

    invoke-interface/range {v17 .. v17}, Ljava/util/Map;->isEmpty()Z

    move-result v17

    if-nez v17, :cond_1

    .line 44
    const-string v17, "e"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;->eventProps:Ljava/util/Map;

    move-object/from16 v18, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-virtual {v5, v0, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    :cond_1
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v17

    if-eqz v17, :cond_4

    .line 49
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/uservoice/uservoicesdk/Session;->getClientConfig()Lcom/uservoice/uservoicesdk/model/ClientConfig;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/uservoice/uservoicesdk/model/ClientConfig;->getSubdomainId()Ljava/lang/String;

    move-result-object v13

    .line 50
    .local v13, "subdomain":Ljava/lang/String;
    const-string v11, "t"

    .line 55
    .local v11, "route":Ljava/lang/String;
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;->event:Ljava/lang/String;

    move-object/from16 v17, v0

    sget-object v18, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->VIEW_APP:Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;

    invoke-virtual/range {v18 .. v18}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga$Event;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-eqz v17, :cond_5

    sget-object v3, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->EXTERNAL_CHANNEL:Ljava/lang/String;

    .line 56
    .local v3, "channel":Ljava/lang/String;
    :goto_1
    new-instance v15, Ljava/lang/StringBuilder;

    const-string v17, "https://%s/%s/%s/%s/%s"

    const/16 v18, 0x5

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v18, v0

    const/16 v19, 0x0

    sget-object v20, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->DOMAIN:Ljava/lang/String;

    aput-object v20, v18, v19

    const/16 v19, 0x1

    aput-object v11, v18, v19

    const/16 v19, 0x2

    aput-object v13, v18, v19

    const/16 v19, 0x3

    aput-object v3, v18, v19

    const/16 v19, 0x4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;->event:Ljava/lang/String;

    move-object/from16 v20, v0

    aput-object v20, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-direct {v15, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 57
    .local v15, "url":Ljava/lang/StringBuilder;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;->uvts:Ljava/lang/String;

    move-object/from16 v17, v0

    if-eqz v17, :cond_2

    .line 58
    const-string v17, "/"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;->uvts:Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 61
    :cond_2
    const-string v17, "/track.js?_="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 62
    new-instance v17, Ljava/util/Date;

    invoke-direct/range {v17 .. v17}, Ljava/util/Date;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/util/Date;->getTime()J

    move-result-wide v18

    move-wide/from16 v0, v18

    invoke-virtual {v15, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    .line 63
    const-string v17, "&c=_"

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 64
    invoke-virtual {v5}, Lorg/json/JSONObject;->length()I

    move-result v17

    if-eqz v17, :cond_3

    .line 65
    const-string v17, "&d="

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 67
    :try_start_1
    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->getBytes()[B

    move-result-object v17

    const/16 v18, 0x2

    invoke-static/range {v17 .. v18}, Landroid/util/Base64;->encodeToString([BI)Ljava/lang/String;

    move-result-object v17

    const-string v18, "UTF-8"

    invoke-static/range {v17 .. v18}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 72
    :cond_3
    :try_start_2
    const-string v17, "UV"

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    new-instance v4, Lcom/squareup/okhttp/OkHttpClient;

    invoke-direct {v4}, Lcom/squareup/okhttp/OkHttpClient;-><init>()V

    .line 75
    .local v4, "client":Lcom/squareup/okhttp/OkHttpClient;
    new-instance v17, Lcom/squareup/okhttp/Request$Builder;

    invoke-direct/range {v17 .. v17}, Lcom/squareup/okhttp/Request$Builder;-><init>()V

    .line 76
    invoke-virtual/range {v17 .. v17}, Lcom/squareup/okhttp/Request$Builder;->get()Lcom/squareup/okhttp/Request$Builder;

    move-result-object v17

    .line 77
    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Lcom/squareup/okhttp/Request$Builder;->url(Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v17

    const-string v18, "User-Agent"

    const-string v19, "uservoice-android-%s"

    const/16 v20, 0x1

    move/from16 v0, v20

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v20, v0

    const/16 v21, 0x0

    .line 78
    invoke-static {}, Lcom/uservoice/uservoicesdk/UserVoice;->getVersion()Ljava/lang/String;

    move-result-object v22

    aput-object v22, v20, v21

    invoke-static/range {v19 .. v20}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v19

    invoke-virtual/range {v17 .. v19}, Lcom/squareup/okhttp/Request$Builder;->addHeader(Ljava/lang/String;Ljava/lang/String;)Lcom/squareup/okhttp/Request$Builder;

    move-result-object v17

    .line 79
    invoke-virtual/range {v17 .. v17}, Lcom/squareup/okhttp/Request$Builder;->build()Lcom/squareup/okhttp/Request;

    move-result-object v8

    .line 81
    .local v8, "request":Lcom/squareup/okhttp/Request;
    invoke-virtual {v4, v8}, Lcom/squareup/okhttp/OkHttpClient;->newCall(Lcom/squareup/okhttp/Request;)Lcom/squareup/okhttp/Call;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/squareup/okhttp/Call;->execute()Lcom/squareup/okhttp/Response;

    move-result-object v9

    .line 82
    .local v9, "response":Lcom/squareup/okhttp/Response;
    invoke-virtual {v9}, Lcom/squareup/okhttp/Response;->code()I

    move-result v12

    .line 83
    .local v12, "statusCode":I
    const/16 v17, 0xc8

    move/from16 v0, v17

    if-eq v12, v0, :cond_7

    .line 84
    const/16 v17, 0x0

    .line 96
    .end local v3    # "channel":Ljava/lang/String;
    .end local v4    # "client":Lcom/squareup/okhttp/OkHttpClient;
    .end local v5    # "data":Lorg/json/JSONObject;
    .end local v8    # "request":Lcom/squareup/okhttp/Request;
    .end local v9    # "response":Lcom/squareup/okhttp/Response;
    .end local v11    # "route":Ljava/lang/String;
    .end local v12    # "statusCode":I
    .end local v13    # "subdomain":Ljava/lang/String;
    .end local v14    # "traits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "url":Ljava/lang/StringBuilder;
    :goto_2
    return-object v17

    .line 52
    .restart local v5    # "data":Lorg/json/JSONObject;
    .restart local v14    # "traits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    :cond_4
    invoke-static {}, Lcom/uservoice/uservoicesdk/Session;->getInstance()Lcom/uservoice/uservoicesdk/Session;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/uservoice/uservoicesdk/babayaga/BabayagaTask;->context:Landroid/content/Context;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Lcom/uservoice/uservoicesdk/Session;->getConfig(Landroid/content/Context;)Lcom/uservoice/uservoicesdk/Config;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/uservoice/uservoicesdk/Config;->getSite()Ljava/lang/String;

    move-result-object v17

    const-string v18, "\\."

    invoke-virtual/range {v17 .. v18}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v17

    const/16 v18, 0x0

    aget-object v13, v17, v18

    .line 53
    .restart local v13    # "subdomain":Ljava/lang/String;
    const-string v11, "t/k"

    .restart local v11    # "route":Ljava/lang/String;
    goto/16 :goto_0

    .line 55
    :cond_5
    sget-object v3, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->CHANNEL:Ljava/lang/String;

    goto/16 :goto_1

    .line 68
    .restart local v3    # "channel":Ljava/lang/String;
    .restart local v15    # "url":Ljava/lang/StringBuilder;
    :catch_0
    move-exception v6

    .line 69
    .local v6, "e":Ljava/io/UnsupportedEncodingException;
    new-instance v17, Ljava/lang/RuntimeException;

    move-object/from16 v0, v17

    invoke-direct {v0, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v17
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 92
    .end local v3    # "channel":Ljava/lang/String;
    .end local v5    # "data":Lorg/json/JSONObject;
    .end local v6    # "e":Ljava/io/UnsupportedEncodingException;
    .end local v11    # "route":Ljava/lang/String;
    .end local v13    # "subdomain":Ljava/lang/String;
    .end local v14    # "traits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .end local v15    # "url":Ljava/lang/StringBuilder;
    :catch_1
    move-exception v6

    .line 93
    .local v6, "e":Ljava/lang/Exception;
    invoke-virtual {v6}, Ljava/lang/Exception;->printStackTrace()V

    .line 94
    const-string v17, "UV"

    const-string v18, "%s: %s"

    const/16 v19, 0x2

    move/from16 v0, v19

    new-array v0, v0, [Ljava/lang/Object;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    const/16 v20, 0x1

    invoke-virtual {v6}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v21

    aput-object v21, v19, v20

    invoke-static/range {v18 .. v19}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    .end local v6    # "e":Ljava/lang/Exception;
    :cond_6
    :goto_3
    const/16 v17, 0x0

    goto :goto_2

    .line 85
    .restart local v3    # "channel":Ljava/lang/String;
    .restart local v4    # "client":Lcom/squareup/okhttp/OkHttpClient;
    .restart local v5    # "data":Lorg/json/JSONObject;
    .restart local v8    # "request":Lcom/squareup/okhttp/Request;
    .restart local v9    # "response":Lcom/squareup/okhttp/Response;
    .restart local v11    # "route":Ljava/lang/String;
    .restart local v12    # "statusCode":I
    .restart local v13    # "subdomain":Ljava/lang/String;
    .restart local v14    # "traits":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/Object;>;"
    .restart local v15    # "url":Ljava/lang/StringBuilder;
    :cond_7
    :try_start_3
    invoke-virtual {v9}, Lcom/squareup/okhttp/Response;->body()Lcom/squareup/okhttp/ResponseBody;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Lcom/squareup/okhttp/ResponseBody;->string()Ljava/lang/String;

    move-result-object v2

    .line 86
    .local v2, "body":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v17

    if-lez v17, :cond_6

    .line 87
    const/16 v17, 0x2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v18

    add-int/lit8 v18, v18, -0x2

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 88
    .local v7, "payload":Ljava/lang/String;
    new-instance v10, Lorg/json/JSONObject;

    invoke-direct {v10, v7}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    .line 89
    .local v10, "responseData":Lorg/json/JSONObject;
    const-string v17, "uvts"

    move-object/from16 v0, v17

    invoke-virtual {v10, v0}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 90
    .local v16, "uvts":Ljava/lang/String;
    invoke-static/range {v16 .. v16}, Lcom/uservoice/uservoicesdk/babayaga/Babayaga;->setUvts(Ljava/lang/String;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_3
.end method
