.class Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "MembershipInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/MembershipInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/MembershipInfo;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 271
    new-instance v0, Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 270
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/MembershipInfo;
    .locals 10
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 298
    const/4 v5, 0x0

    .line 299
    .local v5, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 300
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 301
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v5

    .line 303
    :cond_0
    if-nez v5, :cond_8

    .line 304
    const/4 v0, 0x0

    .line 305
    .local v0, "f_accessType":Lcom/dropbox/core/v2/sharing/AccessLevel;
    const/4 v3, 0x0

    .line 306
    .local v3, "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberPermission;>;"
    const/4 v1, 0x0

    .line 307
    .local v1, "f_initials":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    .line 308
    .local v2, "f_isInherited":Ljava/lang/Boolean;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_5

    .line 309
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 310
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 311
    const-string v7, "access_type"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 312
    sget-object v7, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    invoke-virtual {v7, p1}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/AccessLevel;

    move-result-object v0

    goto :goto_0

    .line 314
    :cond_1
    const-string v7, "permissions"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 315
    sget-object v7, Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberPermission;>;"
    check-cast v3, Ljava/util/List;

    .restart local v3    # "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberPermission;>;"
    goto :goto_0

    .line 317
    :cond_2
    const-string v7, "initials"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 318
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_initials":Ljava/lang/String;
    check-cast v1, Ljava/lang/String;

    .restart local v1    # "f_initials":Ljava/lang/String;
    goto :goto_0

    .line 320
    :cond_3
    const-string v7, "is_inherited"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 321
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_isInherited":Ljava/lang/Boolean;
    check-cast v2, Ljava/lang/Boolean;

    .restart local v2    # "f_isInherited":Ljava/lang/Boolean;
    goto :goto_0

    .line 324
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 327
    .end local v4    # "field":Ljava/lang/String;
    :cond_5
    if-nez v0, :cond_6

    .line 328
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"access_type\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 330
    :cond_6
    new-instance v6, Lcom/dropbox/core/v2/sharing/MembershipInfo;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    invoke-direct {v6, v0, v3, v1, v7}, Lcom/dropbox/core/v2/sharing/MembershipInfo;-><init>(Lcom/dropbox/core/v2/sharing/AccessLevel;Ljava/util/List;Ljava/lang/String;Z)V

    .line 335
    .local v6, "value":Lcom/dropbox/core/v2/sharing/MembershipInfo;
    if-nez p2, :cond_7

    .line 336
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 338
    :cond_7
    return-object v6

    .line 333
    .end local v0    # "f_accessType":Lcom/dropbox/core/v2/sharing/AccessLevel;
    .end local v1    # "f_initials":Ljava/lang/String;
    .end local v2    # "f_isInherited":Ljava/lang/Boolean;
    .end local v3    # "f_permissions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/sharing/MemberPermission;>;"
    .end local v6    # "value":Lcom/dropbox/core/v2/sharing/MembershipInfo;
    :cond_8
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "No subtype found that matches tag: \""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "\""

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7
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
    .line 270
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/MembershipInfo;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/MembershipInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/MembershipInfo;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 275
    if-nez p3, :cond_0

    .line 276
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 278
    :cond_0
    const-string v0, "access_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 279
    sget-object v0, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/MembershipInfo;->accessType:Lcom/dropbox/core/v2/sharing/AccessLevel;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/AccessLevel$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/AccessLevel;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 280
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/MembershipInfo;->permissions:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 281
    const-string v0, "permissions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 282
    sget-object v0, Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/MemberPermission$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/MembershipInfo;->permissions:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 284
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/MembershipInfo;->initials:Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 285
    const-string v0, "initials"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 286
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/MembershipInfo;->initials:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 288
    :cond_2
    const-string v0, "is_inherited"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 289
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/MembershipInfo;->isInherited:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 290
    if-nez p3, :cond_3

    .line 291
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 293
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
    .line 270
    check-cast p1, Lcom/dropbox/core/v2/sharing/MembershipInfo;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/MembershipInfo$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/MembershipInfo;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
