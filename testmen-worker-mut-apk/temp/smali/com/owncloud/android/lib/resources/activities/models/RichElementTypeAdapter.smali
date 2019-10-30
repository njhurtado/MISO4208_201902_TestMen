.class public Lcom/owncloud/android/lib/resources/activities/models/RichElementTypeAdapter;
.super Lcom/google/gson/TypeAdapter;
.source "RichElementTypeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/gson/TypeAdapter",
        "<",
        "Lcom/owncloud/android/lib/resources/activities/models/RichElement;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Lcom/google/gson/TypeAdapter;-><init>()V

    return-void
.end method

.method private read(Lcom/owncloud/android/lib/resources/activities/models/RichElement;Lcom/google/gson/stream/JsonReader;)V
    .locals 3
    .param p1, "richElement"    # Lcom/owncloud/android/lib/resources/activities/models/RichElement;
    .param p2, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 85
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 87
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    .line 88
    invoke-virtual {p1}, Lcom/owncloud/android/lib/resources/activities/models/RichElement;->getRichObjectList()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, v0, p2}, Lcom/owncloud/android/lib/resources/activities/models/RichElementTypeAdapter;->readObject(Ljava/lang/String;Lcom/google/gson/stream/JsonReader;)Lcom/owncloud/android/lib/resources/activities/models/RichObject;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 91
    .end local v0    # "name":Ljava/lang/String;
    :cond_1
    return-void
.end method


# virtual methods
.method public read(Lcom/google/gson/stream/JsonReader;)Lcom/owncloud/android/lib/resources/activities/models/RichElement;
    .locals 5
    .param p1, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v2, Lcom/owncloud/android/lib/resources/activities/models/RichElement;

    invoke-direct {v2}, Lcom/owncloud/android/lib/resources/activities/models/RichElement;-><init>()V

    .line 49
    .local v2, "richElement":Lcom/owncloud/android/lib/resources/activities/models/RichElement;
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 50
    const/4 v0, 0x0

    .line 51
    .local v0, "count":I
    :goto_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 52
    if-nez v0, :cond_0

    .line 53
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/owncloud/android/lib/resources/activities/models/RichElement;->setRichSubject(Ljava/lang/String;)V

    .line 75
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 55
    :cond_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->peek()Lcom/google/gson/stream/JsonToken;

    move-result-object v1

    .line 57
    .local v1, "nextType":Lcom/google/gson/stream/JsonToken;
    sget-object v3, Lcom/owncloud/android/lib/resources/activities/models/RichElementTypeAdapter$1;->$SwitchMap$com$google$gson$stream$JsonToken:[I

    invoke-virtual {v1}, Lcom/google/gson/stream/JsonToken;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    goto :goto_1

    .line 59
    :pswitch_0
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 60
    invoke-direct {p0, v2, p1}, Lcom/owncloud/android/lib/resources/activities/models/RichElementTypeAdapter;->read(Lcom/owncloud/android/lib/resources/activities/models/RichElement;Lcom/google/gson/stream/JsonReader;)V

    .line 61
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endObject()V

    goto :goto_1

    .line 65
    :pswitch_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->beginArray()V

    .line 66
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    goto :goto_1

    .line 79
    .end local v1    # "nextType":Lcom/google/gson/stream/JsonToken;
    :cond_1
    invoke-virtual {p1}, Lcom/google/gson/stream/JsonReader;->endArray()V

    .line 81
    return-object v2

    .line 57
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public bridge synthetic read(Lcom/google/gson/stream/JsonReader;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    invoke-virtual {p0, p1}, Lcom/owncloud/android/lib/resources/activities/models/RichElementTypeAdapter;->read(Lcom/google/gson/stream/JsonReader;)Lcom/owncloud/android/lib/resources/activities/models/RichElement;

    move-result-object v0

    return-object v0
.end method

.method readObject(Ljava/lang/String;Lcom/google/gson/stream/JsonReader;)Lcom/owncloud/android/lib/resources/activities/models/RichObject;
    .locals 3
    .param p1, "tag"    # Ljava/lang/String;
    .param p2, "in"    # Lcom/google/gson/stream/JsonReader;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 96
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->beginObject()V

    .line 97
    new-instance v1, Lcom/owncloud/android/lib/resources/activities/models/RichObject;

    invoke-direct {v1}, Lcom/owncloud/android/lib/resources/activities/models/RichObject;-><init>()V

    .line 98
    .local v1, "richObject":Lcom/owncloud/android/lib/resources/activities/models/RichObject;
    invoke-virtual {v1, p1}, Lcom/owncloud/android/lib/resources/activities/models/RichObject;->setTag(Ljava/lang/String;)V

    .line 99
    :cond_0
    :goto_0
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    .line 100
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v0

    .line 101
    .local v0, "name":Ljava/lang/String;
    const-string v2, "type"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 102
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/owncloud/android/lib/resources/activities/models/RichObject;->setType(Ljava/lang/String;)V

    goto :goto_0

    .line 103
    :cond_1
    const-string v2, "id"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 104
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/owncloud/android/lib/resources/activities/models/RichObject;->setId(Ljava/lang/String;)V

    goto :goto_0

    .line 105
    :cond_2
    const-string v2, "name"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 106
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/owncloud/android/lib/resources/activities/models/RichObject;->setName(Ljava/lang/String;)V

    goto :goto_0

    .line 107
    :cond_3
    const-string v2, "path"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 108
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/owncloud/android/lib/resources/activities/models/RichObject;->setPath(Ljava/lang/String;)V

    goto :goto_0

    .line 109
    :cond_4
    const-string v2, "link"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 110
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/owncloud/android/lib/resources/activities/models/RichObject;->setLink(Ljava/lang/String;)V

    goto :goto_0

    .line 111
    :cond_5
    const-string v2, "server"

    invoke-virtual {v2, v0}, Ljava/lang/String;->contentEquals(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 112
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/owncloud/android/lib/resources/activities/models/RichObject;->setLink(Ljava/lang/String;)V

    goto :goto_0

    .line 114
    .end local v0    # "name":Ljava/lang/String;
    :cond_6
    invoke-virtual {p2}, Lcom/google/gson/stream/JsonReader;->endObject()V

    .line 115
    return-object v1
.end method

.method public write(Lcom/google/gson/stream/JsonWriter;Lcom/owncloud/android/lib/resources/activities/models/RichElement;)V
    .locals 0
    .param p1, "out"    # Lcom/google/gson/stream/JsonWriter;
    .param p2, "value"    # Lcom/owncloud/android/lib/resources/activities/models/RichElement;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 44
    return-void
.end method

.method public bridge synthetic write(Lcom/google/gson/stream/JsonWriter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 39
    check-cast p2, Lcom/owncloud/android/lib/resources/activities/models/RichElement;

    invoke-virtual {p0, p1, p2}, Lcom/owncloud/android/lib/resources/activities/models/RichElementTypeAdapter;->write(Lcom/google/gson/stream/JsonWriter;Lcom/owncloud/android/lib/resources/activities/models/RichElement;)V

    return-void
.end method
