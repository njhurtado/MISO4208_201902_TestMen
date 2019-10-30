.class public Lcom/dropbox/core/v2/users/Name$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "Name.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/users/Name;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/users/Name;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 172
    new-instance v0, Lcom/dropbox/core/v2/users/Name$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/Name$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/users/Name$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 171
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/users/Name;
    .locals 11
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 197
    const/4 v7, 0x0

    .line 198
    .local v7, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 199
    invoke-static {p1}, Lcom/dropbox/core/v2/users/Name$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 200
    invoke-static {p1}, Lcom/dropbox/core/v2/users/Name$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v7

    .line 202
    :cond_0
    if-nez v7, :cond_d

    .line 203
    const/4 v1, 0x0

    .line 204
    .local v1, "f_givenName":Ljava/lang/String;
    const/4 v2, 0x0

    .line 205
    .local v2, "f_surname":Ljava/lang/String;
    const/4 v3, 0x0

    .line 206
    .local v3, "f_familiarName":Ljava/lang/String;
    const/4 v4, 0x0

    .line 207
    .local v4, "f_displayName":Ljava/lang/String;
    const/4 v5, 0x0

    .line 208
    .local v5, "f_abbreviatedName":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v8

    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v8, v9, :cond_6

    .line 209
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v6

    .line 210
    .local v6, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 211
    const-string v8, "given_name"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 212
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_givenName":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_givenName":Ljava/lang/String;
    goto :goto_0

    .line 214
    :cond_1
    const-string v8, "surname"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 215
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_surname":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_surname":Ljava/lang/String;
    goto :goto_0

    .line 217
    :cond_2
    const-string v8, "familiar_name"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_3

    .line 218
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_familiarName":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_familiarName":Ljava/lang/String;
    goto :goto_0

    .line 220
    :cond_3
    const-string v8, "display_name"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_4

    .line 221
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_displayName":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "f_displayName":Ljava/lang/String;
    goto :goto_0

    .line 223
    :cond_4
    const-string v8, "abbreviated_name"

    invoke-virtual {v8, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_5

    .line 224
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v8

    invoke-virtual {v8, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v5

    .end local v5    # "f_abbreviatedName":Ljava/lang/String;
    check-cast v5, Ljava/lang/String;

    .restart local v5    # "f_abbreviatedName":Ljava/lang/String;
    goto :goto_0

    .line 227
    :cond_5
    invoke-static {p1}, Lcom/dropbox/core/v2/users/Name$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 230
    .end local v6    # "field":Ljava/lang/String;
    :cond_6
    if-nez v1, :cond_7

    .line 231
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"given_name\" missing."

    invoke-direct {v8, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8

    .line 233
    :cond_7
    if-nez v2, :cond_8

    .line 234
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"surname\" missing."

    invoke-direct {v8, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8

    .line 236
    :cond_8
    if-nez v3, :cond_9

    .line 237
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"familiar_name\" missing."

    invoke-direct {v8, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8

    .line 239
    :cond_9
    if-nez v4, :cond_a

    .line 240
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"display_name\" missing."

    invoke-direct {v8, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8

    .line 242
    :cond_a
    if-nez v5, :cond_b

    .line 243
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"abbreviated_name\" missing."

    invoke-direct {v8, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8

    .line 245
    :cond_b
    new-instance v0, Lcom/dropbox/core/v2/users/Name;

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/users/Name;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 250
    .local v0, "value":Lcom/dropbox/core/v2/users/Name;
    if-nez p2, :cond_c

    .line 251
    invoke-static {p1}, Lcom/dropbox/core/v2/users/Name$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 253
    :cond_c
    return-object v0

    .line 248
    .end local v0    # "value":Lcom/dropbox/core/v2/users/Name;
    .end local v1    # "f_givenName":Ljava/lang/String;
    .end local v2    # "f_surname":Ljava/lang/String;
    .end local v3    # "f_familiarName":Ljava/lang/String;
    .end local v4    # "f_displayName":Ljava/lang/String;
    .end local v5    # "f_abbreviatedName":Ljava/lang/String;
    :cond_d
    new-instance v8, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No subtype found that matches tag: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v8
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 171
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/users/Name$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/users/Name;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/users/Name;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/users/Name;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 176
    if-nez p3, :cond_0

    .line 177
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 179
    :cond_0
    const-string v0, "given_name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 180
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/Name;->givenName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 181
    const-string v0, "surname"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 182
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/Name;->surname:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 183
    const-string v0, "familiar_name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 184
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/Name;->familiarName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 185
    const-string v0, "display_name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 186
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/Name;->displayName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 187
    const-string v0, "abbreviated_name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 188
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/Name;->abbreviatedName:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 189
    if-nez p3, :cond_1

    .line 190
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 192
    :cond_1
    return-void
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 171
    check-cast p1, Lcom/dropbox/core/v2/users/Name;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/users/Name$Serializer;->serialize(Lcom/dropbox/core/v2/users/Name;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
