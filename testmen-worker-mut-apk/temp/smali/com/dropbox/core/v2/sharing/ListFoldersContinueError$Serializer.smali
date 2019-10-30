.class Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;
.super Lcom/dropbox/core/stone/UnionSerializer;
.source "ListFoldersContinueError.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/UnionSerializer",
        "<",
        "Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 37
    new-instance v0, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;->INSTANCE:Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0}, Lcom/dropbox/core/stone/UnionSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;
    .locals 5
    .param p1, "p"    # Lcom/fasterxml/jackson/core/JsonParser;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 57
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v3

    sget-object v4, Lcom/fasterxml/jackson/core/JsonToken;->VALUE_STRING:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v3, v4, :cond_0

    .line 58
    const/4 v0, 0x1

    .line 59
    .local v0, "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;->getStringValue(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .line 60
    .local v1, "tag":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 67
    :goto_0
    if-nez v1, :cond_1

    .line 68
    new-instance v3, Lcom/fasterxml/jackson/core/JsonParseException;

    const-string v4, "Required field missing: .tag"

    invoke-direct {v3, p1, v4}, Lcom/fasterxml/jackson/core/JsonParseException;-><init>(Lcom/fasterxml/jackson/core/JsonParser;Ljava/lang/String;)V

    throw v3

    .line 63
    .end local v0    # "collapsed":Z
    .end local v1    # "tag":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    .line 64
    .restart local v0    # "collapsed":Z
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 65
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v1

    .restart local v1    # "tag":Ljava/lang/String;
    goto :goto_0

    .line 70
    :cond_1
    const-string v3, "invalid_cursor"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 71
    sget-object v2, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;->INVALID_CURSOR:Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;

    .line 76
    .local v2, "value":Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;
    :goto_1
    if-nez v0, :cond_2

    .line 77
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;->skipFields(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 78
    invoke-static {p1}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 80
    :cond_2
    return-object v2

    .line 74
    .end local v2    # "value":Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;
    :cond_3
    sget-object v2, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;->OTHER:Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;

    .restart local v2    # "value":Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;
    goto :goto_1
.end method

.method public bridge synthetic deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonParseException;
        }
    .end annotation

    .prologue
    .line 36
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 41
    sget-object v0, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$1;->$SwitchMap$com$dropbox$core$v2$sharing$ListFoldersContinueError:[I

    invoke-virtual {p1}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 47
    const-string v0, "other"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    .line 50
    :goto_0
    return-void

    .line 43
    :pswitch_0
    const-string v0, "invalid_cursor"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 41
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public bridge synthetic serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 36
    check-cast p1, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;

    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/sharing/ListFoldersContinueError$Serializer;->serialize(Lcom/dropbox/core/v2/sharing/ListFoldersContinueError;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    return-void
.end method
