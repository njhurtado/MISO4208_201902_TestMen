.class Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FolderPermission.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/FolderPermission;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/FolderPermission;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 142
    new-instance v0, Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 141
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/FolderPermission;
    .locals 9
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 165
    const/4 v4, 0x0

    .line 166
    .local v4, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 167
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 168
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v4

    .line 170
    :cond_0
    if-nez v4, :cond_8

    .line 171
    const/4 v0, 0x0

    .line 172
    .local v0, "f_action":Lcom/dropbox/core/v2/sharing/FolderAction;
    const/4 v1, 0x0

    .line 173
    .local v1, "f_allow":Ljava/lang/Boolean;
    const/4 v2, 0x0

    .line 174
    .local v2, "f_reason":Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v6

    sget-object v7, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v6, v7, :cond_4

    .line 175
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    .line 176
    .local v3, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 177
    const-string v6, "action"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 178
    sget-object v6, Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;

    invoke-virtual {v6, p1}, Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/FolderAction;

    move-result-object v0

    goto :goto_0

    .line 180
    :cond_1
    const-string v6, "allow"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 181
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_allow":Ljava/lang/Boolean;
    check-cast v1, Ljava/lang/Boolean;

    .restart local v1    # "f_allow":Ljava/lang/Boolean;
    goto :goto_0

    .line 183
    :cond_2
    const-string v6, "reason"

    invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 184
    sget-object v6, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;

    invoke-static {v6}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v6

    invoke-virtual {v6, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v2

    .end local v2    # "f_reason":Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    check-cast v2, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    .restart local v2    # "f_reason":Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    goto :goto_0

    .line 187
    :cond_3
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 190
    .end local v3    # "field":Ljava/lang/String;
    :cond_4
    if-nez v0, :cond_5

    .line 191
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"action\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 193
    :cond_5
    if-nez v1, :cond_6

    .line 194
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v7, "Required field \"allow\" missing."

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6

    .line 196
    :cond_6
    new-instance v5, Lcom/dropbox/core/v2/sharing/FolderPermission;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    invoke-direct {v5, v0, v6, v2}, Lcom/dropbox/core/v2/sharing/FolderPermission;-><init>(Lcom/dropbox/core/v2/sharing/FolderAction;ZLcom/dropbox/core/v2/sharing/PermissionDeniedReason;)V

    .line 201
    .local v5, "value":Lcom/dropbox/core/v2/sharing/FolderPermission;
    if-nez p2, :cond_7

    .line 202
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 204
    :cond_7
    return-object v5

    .line 199
    .end local v0    # "f_action":Lcom/dropbox/core/v2/sharing/FolderAction;
    .end local v1    # "f_allow":Ljava/lang/Boolean;
    .end local v2    # "f_reason":Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;
    .end local v5    # "value":Lcom/dropbox/core/v2/sharing/FolderPermission;
    :cond_8
    new-instance v6, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "No subtype found that matches tag: \""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "\""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, p1, v7}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v6
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
    .line 141
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/sharing/FolderPermission;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/FolderPermission;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/FolderPermission;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 146
    if-nez p3, :cond_0

    .line 147
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 149
    :cond_0
    const-string v0, "action"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 150
    sget-object v0, Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderPermission;->action:Lcom/dropbox/core/v2/sharing/FolderAction;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/sharing/FolderAction$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FolderAction;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 151
    const-string v0, "allow"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 152
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->boolean_()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-boolean v1, p1, Lcom/dropbox/core/v2/sharing/FolderPermission;->allow:Z

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 153
    iget-object v0, p1, Lcom/dropbox/core/v2/sharing/FolderPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    if-eqz v0, :cond_1

    .line 154
    const-string v0, "reason"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 155
    sget-object v0, Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/sharing/FolderPermission;->reason:Lcom/dropbox/core/v2/sharing/PermissionDeniedReason;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 157
    :cond_1
    if-nez p3, :cond_2

    .line 158
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 160
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
    .line 141
    check-cast p1, Lcom/dropbox/core/v2/sharing/FolderPermission;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/sharing/FolderPermission$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/FolderPermission;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
