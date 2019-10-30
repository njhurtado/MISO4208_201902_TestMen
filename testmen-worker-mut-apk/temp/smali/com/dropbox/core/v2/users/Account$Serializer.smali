.class Lcom/dropbox/core/v2/users/Account$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "Account.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/users/Account;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/users/Account;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/users/Account$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 209
    new-instance v0, Lcom/dropbox/core/v2/users/Account$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/users/Account$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/users/Account$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Account$Serializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/users/Account;
    .locals 12
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 238
    const/4 v10, 0x0

    .line 239
    .local v10, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 240
    invoke-static {p1}, Lcom/dropbox/core/v2/users/Account$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 241
    invoke-static {p1}, Lcom/dropbox/core/v2/users/Account$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v10

    .line 243
    :cond_0
    if-nez v10, :cond_e

    .line 244
    const/4 v1, 0x0

    .line 245
    .local v1, "f_accountId":Ljava/lang/String;
    const/4 v2, 0x0

    .line 246
    .local v2, "f_name":Lcom/dropbox/core/v2/users/Name;
    const/4 v3, 0x0

    .line 247
    .local v3, "f_email":Ljava/lang/String;
    const/4 v8, 0x0

    .line 248
    .local v8, "f_emailVerified":Ljava/lang/Boolean;
    const/4 v7, 0x0

    .line 249
    .local v7, "f_disabled":Ljava/lang/Boolean;
    const/4 v6, 0x0

    .line 250
    .local v6, "f_profilePhotoUrl":Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v4

    sget-object v5, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v4, v5, :cond_7

    .line 251
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v9

    .line 252
    .local v9, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 253
    const-string v4, "account_id"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 254
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_accountId":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_accountId":Ljava/lang/String;
    goto :goto_0

    .line 256
    :cond_1
    const-string v4, "name"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 257
    sget-object v4, Lcom/dropbox/core/v2/users/Name$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;

    invoke-virtual {v4, p1}, Lcom/dropbox/core/v2/users/Name$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_name":Lcom/dropbox/core/v2/users/Name;
    check-cast v2, Lcom/dropbox/core/v2/users/Name;

    .restart local v2    # "f_name":Lcom/dropbox/core/v2/users/Name;
    goto :goto_0

    .line 259
    :cond_2
    const-string v4, "email"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 260
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_email":Ljava/lang/String;
    check-cast v3, Ljava/lang/String;

    .restart local v3    # "f_email":Ljava/lang/String;
    goto :goto_0

    .line 262
    :cond_3
    const-string v4, "email_verified"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 263
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v8

    .end local v8    # "f_emailVerified":Ljava/lang/Boolean;
    check-cast v8, Ljava/lang/Boolean;

    .restart local v8    # "f_emailVerified":Ljava/lang/Boolean;
    goto :goto_0

    .line 265
    :cond_4
    const-string v4, "disabled"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 266
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "f_disabled":Ljava/lang/Boolean;
    check-cast v7, Ljava/lang/Boolean;

    .restart local v7    # "f_disabled":Ljava/lang/Boolean;
    goto :goto_0

    .line 268
    :cond_5
    const-string v4, "profile_photo_url"

    invoke-virtual {v4, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 269
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-static {v4}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_profilePhotoUrl":Ljava/lang/String;
    check-cast v6, Ljava/lang/String;

    .restart local v6    # "f_profilePhotoUrl":Ljava/lang/String;
    goto/16 :goto_0

    .line 272
    :cond_6
    invoke-static {p1}, Lcom/dropbox/core/v2/users/Account$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto/16 :goto_0

    .line 275
    .end local v9    # "field":Ljava/lang/String;
    :cond_7
    if-nez v1, :cond_8

    .line 276
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"account_id\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 278
    :cond_8
    if-nez v2, :cond_9

    .line 279
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"name\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 281
    :cond_9
    if-nez v3, :cond_a

    .line 282
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"email\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 284
    :cond_a
    if-nez v8, :cond_b

    .line 285
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"email_verified\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 287
    :cond_b
    if-nez v7, :cond_c

    .line 288
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v5, "Required field \"disabled\" missing."

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4

    .line 290
    :cond_c
    new-instance v0, Lcom/dropbox/core/v2/users/Account;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct/range {v0 .. v6}, Lcom/dropbox/core/v2/users/Account;-><init>(Ljava/lang/String;Lcom/dropbox/core/v2/users/Name;Ljava/lang/String;ZZLjava/lang/String;)V

    .line 295
    .local v0, "value":Lcom/dropbox/core/v2/users/Account;
    if-nez p2, :cond_d

    .line 296
    invoke-static {p1}, Lcom/dropbox/core/v2/users/Account$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 298
    :cond_d
    return-object v0

    .line 293
    .end local v0    # "value":Lcom/dropbox/core/v2/users/Account;
    .end local v1    # "f_accountId":Ljava/lang/String;
    .end local v2    # "f_name":Lcom/dropbox/core/v2/users/Name;
    .end local v3    # "f_email":Ljava/lang/String;
    .end local v6    # "f_profilePhotoUrl":Ljava/lang/String;
    .end local v7    # "f_disabled":Ljava/lang/Boolean;
    .end local v8    # "f_emailVerified":Ljava/lang/Boolean;
    :cond_e
    new-instance v4, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "No subtype found that matches tag: \""

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v11, "\""

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, p1, v5}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v4
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
    .line 208
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/users/Account$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/users/Account;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/users/Account;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/users/Account;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 213
    if-nez p3, :cond_0

    .line 214
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 216
    :cond_0
    const-string v0, "account_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 217
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/Account;->accountId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 218
    const-string v0, "name"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 219
    sget-object v0, Lcom/dropbox/core/v2/users/Name$Serializer;->INSTANCE:Lcom/dropbox/core/v2/users/Name$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/users/Account;->name:Lcom/dropbox/core/v2/users/Name;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/users/Name$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 220
    const-string v0, "email"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 221
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/Account;->email:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 222
    const-string v0, "email_verified"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 223
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/users/Account;->emailVerified:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 224
    const-string v0, "disabled"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 225
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/users/Account;->disabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 226
    iget-object v0, p1, Lcom/dropbox/core/v2/users/Account;->profilePhotoUrl:Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 227
    const-string v0, "profile_photo_url"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 228
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/users/Account;->profilePhotoUrl:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 230
    :cond_1
    if-nez p3, :cond_2

    .line 231
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 233
    :cond_2
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
    .line 208
    check-cast p1, Lcom/dropbox/core/v2/users/Account;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/users/Account$Serializer;->serialize(Lcom/dropbox/core/v2/users/Account;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
