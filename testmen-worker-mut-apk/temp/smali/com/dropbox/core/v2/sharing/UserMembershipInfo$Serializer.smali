.class Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "UserMembershipInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/UserMembershipInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/UserMembershipInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 255
    new-instance v0, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 254
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/UserMembershipInfo;
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
    .line 284
    const/4 v8, 0x0

    .line 285
    .local v8, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 286
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 287
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v8

    .line 289
    :cond_0
    if-nez v8, :cond_a

    .line 290
    const/4 v1, 0x0

    .line 291
    .local v1, "f_accessType":Lcom/dropbox/core/v2/sharing/AccessLevel;
    const/4 v2, 0x0

    .line 292
    .local v2, "f_user":Lcom/dropbox/core/v2/sharing/UserInfo;
    const/4 v3, 0x0

    .line 293
    .local v3, "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberPermission;>;"
    const/4 v4, 0x0

    .line 294
    .local v4, "f_initials":Ljava/lang/String;
    const/4 v5, 0x0

    invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    .line 295
    .local v6, "f_isInherited":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v9, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v9, :cond_6

    .line 296
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v7

    .line 297
    .local v7, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 298
    const-string v5, "access_type"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 299
    sget-object v5, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AccessLevel;

    move-result-object v1

    goto :goto_0

    .line 301
    :cond_1
    const-string v5, "user"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 302
    sget-object v5, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;

    invoke-virtual {v5, p1}, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_user":Lcom/dropbox/core/v2/sharing/UserInfo;
    check-cast v2, Lcom/dropbox/core/v2/sharing/UserInfo;

    .restart local v2    # "f_user":Lcom/dropbox/core/v2/sharing/UserInfo;
    goto :goto_0

    .line 304
    :cond_2
    const-string v5, "permissions"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 305
    sget-object v5, Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberPermission;>;"
    check-cast v3, Ljava/util/List;

    .restart local v3    # "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberPermission;>;"
    goto :goto_0

    .line 307
    :cond_3
    const-string v5, "initials"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 308
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v4

    .end local v4    # "f_initials":Ljava/lang/String;
    check-cast v4, Ljava/lang/String;

    .restart local v4    # "f_initials":Ljava/lang/String;
    goto :goto_0

    .line 310
    :cond_4
    const-string v5, "is_inherited"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 311
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v6

    .end local v6    # "f_isInherited":Ljava/lang/Boolean;
    check-cast v6, Ljava/lang/Boolean;

    .restart local v6    # "f_isInherited":Ljava/lang/Boolean;
    goto :goto_0

    .line 314
    :cond_5
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 317
    .end local v7    # "field":Ljava/lang/String;
    :cond_6
    if-nez v1, :cond_7

    .line 318
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"access_type\" missing."

    invoke-direct {v5, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 320
    :cond_7
    if-nez v2, :cond_8

    .line 321
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v9, "Required field \"user\" missing."

    invoke-direct {v5, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5

    .line 323
    :cond_8
    new-instance v0, Lcom/dropbox/core/v2/sharing/UserMembershipInfo;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct/range {v0 .. v5}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/dropbox/core/v2/sharing/UserInfo;Ljava/util/List;Ljava/lang/String;Z)V

    .line 328
    .local v0, "value":Lcom/dropbox/core/v2/sharing/UserMembershipInfo;
    if-nez p2, :cond_9

    .line 329
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 331
    :cond_9
    return-object v0

    .line 326
    .end local v0    # "value":Lcom/dropbox/core/v2/sharing/UserMembershipInfo;
    .end local v1    # "f_accessType":Lcom/dropbox/core/v2/sharing/AccessLevel;
    .end local v2    # "f_user":Lcom/dropbox/core/v2/sharing/UserInfo;
    .end local v3    # "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberPermission;>;"
    .end local v4    # "f_initials":Ljava/lang/String;
    .end local v6    # "f_isInherited":Ljava/lang/Boolean;
    :cond_a
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "No subtype found that matches tag: \""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string v10, "\""

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v5, p1, v9}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v5
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
    .line 254
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/UserMembershipInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/UserMembershipInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/UserMembershipInfo;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 259
    if-nez p3, :cond_0

    .line 260
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 262
    :cond_0
    const-string v0, "access_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 263
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/UserMembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 264
    const-string v0, "user"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 265
    sget-object v0, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/UserMembershipInfo;->user:Lcom/dropbox/core/v2/sharing/UserInfo;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/UserInfo$Serializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 266
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/UserMembershipInfo;->permissions:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 267
    const-string v0, "permissions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 268
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/UserMembershipInfo;->permissions:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 270
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/UserMembershipInfo;->initials:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 271
    const-string v0, "initials"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 272
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/UserMembershipInfo;->initials:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 274
    :cond_2
    const-string v0, "is_inherited"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 275
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/UserMembershipInfo;->isInherited:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 276
    if-nez p3, :cond_3

    .line 277
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 279
    :cond_3
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
    .line 254
    check-cast p1, Lcom/dropbox/core/v2/sharing/UserMembershipInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/UserMembershipInfo$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/UserMembershipInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
