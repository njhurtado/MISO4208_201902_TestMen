.class Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "FoldersContainingPaperDoc.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 197
    new-instance v0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 196
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
    .locals 8
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .param p2, "collapsed"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 220
    const/4 v3, 0x0

    .line 221
    .local v3, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 222
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 223
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v3

    .line 225
    :cond_0
    if-nez v3, :cond_5

    .line 226
    const/4 v0, 0x0

    .line 227
    .local v0, "f_folderSharingPolicyType":Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;
    const/4 v1, 0x0

    .line 228
    .local v1, "f_folders":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/Folder;>;"
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v5

    sget-object v6, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v5, v6, :cond_3

    .line 229
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    .line 230
    .local v2, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 231
    const-string v5, "folder_sharing_policy_type"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 232
    sget-object v5, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "f_folderSharingPolicyType":Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;
    check-cast v0, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    .restart local v0    # "f_folderSharingPolicyType":Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;
    goto :goto_0

    .line 234
    :cond_1
    const-string v5, "folders"

    invoke-virtual {v5, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 235
    sget-object v5, Lcom/dropbox/core/v2/paper/Folder$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/Folder$Serializer;

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-static {v5}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v5

    invoke-virtual {v5, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_folders":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/Folder;>;"
    check-cast v1, Ljava/util/List;

    .restart local v1    # "f_folders":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/Folder;>;"
    goto :goto_0

    .line 238
    :cond_2
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 241
    .end local v2    # "field":Ljava/lang/String;
    :cond_3
    new-instance v4, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;

    invoke-direct {v4, v0, v1}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;-><init>(Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;Ljava/util/List;)V

    .line 246
    .local v4, "value":Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
    if-nez p2, :cond_4

    .line 247
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 249
    :cond_4
    return-object v4

    .line 244
    .end local v0    # "f_folderSharingPolicyType":Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;
    .end local v1    # "f_folders":Ljava/util/List;, "Ljava/util/List<Lcom/dropbox/core/v2/paper/Folder;>;"
    .end local v4    # "value":Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
    :cond_5
    new-instance v5, Lcom/fasterxml/jackson/core/JsonParseException;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "No subtype found that matches tag: \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, p1, v6}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

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
    .line 196
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 201
    if-nez p3, :cond_0

    .line 202
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 204
    :cond_0
    iget-object v0, p1, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folderSharingPolicyType:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    if-eqz v0, :cond_1

    .line 205
    const-string v0, "folder_sharing_policy_type"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 206
    sget-object v0, Lcom/dropbox/core/v2/paper/FolderSharingPolicyType$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folderSharingPolicyType:Lcom/dropbox/core/v2/paper/FolderSharingPolicyType;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 208
    :cond_1
    iget-object v0, p1, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folders:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 209
    const-string v0, "folders"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 210
    sget-object v0, Lcom/dropbox/core/v2/paper/Folder$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/Folder$Serializer;

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->list(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    invoke-static {v0}, Lcom/dropbox/core/stone/StoneSerializers;->nullable(Lcom/dropbox/core/stone/StoneSerializer;)Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;->folders:Ljava/util/List;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 212
    :cond_2
    if-nez p3, :cond_3

    .line 213
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 215
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
    .line 196
    check-cast p1, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc$Serializer;->serialize(Lcom/dropbox/core/v2/paper/FoldersContainingPaperDoc;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
