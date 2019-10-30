.class Lcom/dropbox/core/v2/team/MemberDevices$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "MemberDevices.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/team/MemberDevices;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/team/MemberDevices;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/team/MemberDevices$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 293
    new-instance v0, Lcom/dropbox/core/v2/team/MemberDevices$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/team/MemberDevices$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/team/MemberDevices$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MemberDevices$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 292
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/MemberDevices;
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
    .line 322
    const/4 v5, 0x0

    .line 323
    .local v5, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 324
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberDevices$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 325
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberDevices$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v5

    .line 327
    :cond_0
    if-nez v5, :cond_8

    .line 328
    const/4 v2, 0x0

    .line 329
    .local v2, "f_teamMemberId":Ljava/lang/String;
    const/4 v3, 0x0

    .line 330
    .local v3, "f_webSessions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/ActiveWebSession;>;"
    const/4 v0, 0x0

    .line 331
    .local v0, "f_desktopClients":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/DesktopClientSession;>;"
    const/4 v1, 0x0

    .line 332
    .local v1, "f_mobileClients":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MobileClientSession;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_5

    .line 333
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 334
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 335
    const-string v7, "team_member_id"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 336
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_teamMemberId":Ljava/lang/String;
    check-cast v2, Ljava/lang/String;

    .restart local v2    # "f_teamMemberId":Ljava/lang/String;
    goto :goto_0

    .line 338
    :cond_1
    const-string v7, "web_sessions"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 339
    sget-object v7, Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "f_webSessions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/ActiveWebSession;>;"
    check-cast v3, Ljava/util/List;

    .restart local v3    # "f_webSessions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/ActiveWebSession;>;"
    goto :goto_0

    .line 341
    :cond_2
    const-string v7, "desktop_clients"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 342
    sget-object v7, Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_desktopClients":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/DesktopClientSession;>;"
    check-cast v0, Ljava/util/List;

    .restart local v0    # "f_desktopClients":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/DesktopClientSession;>;"
    goto :goto_0

    .line 344
    :cond_3
    const-string v7, "mobile_clients"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 345
    sget-object v7, Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-static {v7}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_mobileClients":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MobileClientSession;>;"
    check-cast v1, Ljava/util/List;

    .restart local v1    # "f_mobileClients":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MobileClientSession;>;"
    goto :goto_0

    .line 348
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberDevices$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 351
    .end local v4    # "field":Ljava/lang/String;
    :cond_5
    if-nez v2, :cond_6

    .line 352
    new-instance v7, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v8, "Required field \"team_member_id\" missing."

    invoke-direct {v7, p1, v8}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v7

    .line 354
    :cond_6
    new-instance v6, Lcom/dropbox/core/v2/team/MemberDevices;

    invoke-direct {v6, v2, v3, v0, v1}, Lcom/dropbox/core/v2/team/MemberDevices;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V

    .line 359
    .local v6, "value":Lcom/dropbox/core/v2/team/MemberDevices;
    if-nez p2, :cond_7

    .line 360
    invoke-static {p1}, Lcom/dropbox/core/v2/team/MemberDevices$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 362
    :cond_7
    return-object v6

    .line 357
    .end local v0    # "f_desktopClients":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/DesktopClientSession;>;"
    .end local v1    # "f_mobileClients":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/MobileClientSession;>;"
    .end local v2    # "f_teamMemberId":Ljava/lang/String;
    .end local v3    # "f_webSessions":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/team/ActiveWebSession;>;"
    .end local v6    # "value":Lcom/dropbox/core/v2/team/MemberDevices;
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
    .line 292
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/team/MemberDevices$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/team/MemberDevices;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/team/MemberDevices;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/team/MemberDevices;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 297
    if-nez p3, :cond_0

    .line 298
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 300
    :cond_0
    const-string v0, "team_member_id"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 301
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->string()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberDevices;->teamMemberId:Ljava/lang/String;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 302
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MemberDevices;->webSessions:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 303
    const-string v0, "web_sessions"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 304
    sget-object v0, Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/ActiveWebSession$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberDevices;->webSessions:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 306
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MemberDevices;->desktopClients:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 307
    const-string v0, "desktop_clients"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 308
    sget-object v0, Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/DesktopClientSession$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberDevices;->desktopClients:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 310
    :cond_2
    iget-object v0, p1, Lcom/dropbox/core/v2/team/MemberDevices;->mobileClients:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 311
    const-string v0, "mobile_clients"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 312
    sget-object v0, Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;->INSTANCE:Lcom/dropbox/core/v2/team/MobileClientSession$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/team/MemberDevices;->mobileClients:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 314
    :cond_3
    if-nez p3, :cond_4

    .line 315
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 317
    :cond_4
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
    .line 292
    check-cast p1, Lcom/dropbox/core/v2/team/MemberDevices;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/team/MemberDevices$Serializer;->serialize(Lcom/dropbox/core/v2/team/MemberDevices;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
