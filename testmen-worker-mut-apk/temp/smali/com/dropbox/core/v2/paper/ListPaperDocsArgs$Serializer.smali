.class Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;
.super Lcom/dropbox/core/stone/StructSerializer;
.source "ListPaperDocsArgs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Serializer"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/dropbox/core/stone/StructSerializer",
        "<",
        "Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;",
        ">;"
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 312
    new-instance v0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;

    invoke-direct {v0}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;-><init>()V

    sput-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 311
    invoke-direct {p0}, Lcom/dropbox/core/stone/StructSerializer;-><init>()V

    return-void
.end method


# virtual methods
.method public deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;
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
    .line 335
    const/4 v5, 0x0

    .line 336
    .local v5, "tag":Ljava/lang/String;
    if-nez p2, :cond_0

    .line 337
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->expectStartObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 338
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->readTag(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/String;

    move-result-object v5

    .line 340
    :cond_0
    if-nez v5, :cond_7

    .line 341
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;->DOCS_ACCESSED:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    .line 342
    .local v0, "f_filterBy":Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;
    sget-object v2, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;->ACCESSED:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    .line 343
    .local v2, "f_sortBy":Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;
    sget-object v3, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;->ASCENDING:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    .line 344
    .local v3, "f_sortOrder":Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;
    const/16 v7, 0x3e8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 345
    .local v1, "f_limit":Ljava/lang/Integer;
    :goto_0
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentToken()Lcom/fasterxml/jackson/core/JsonToken;

    move-result-object v7

    sget-object v8, Lcom/fasterxml/jackson/core/JsonToken;->FIELD_NAME:Lcom/fasterxml/jackson/core/JsonToken;

    if-ne v7, v8, :cond_5

    .line 346
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v4

    .line 347
    .local v4, "field":Ljava/lang/String;
    invoke-virtual {p1}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;

    .line 348
    const-string v7, "filter_by"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 349
    sget-object v7, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$Serializer;

    invoke-virtual {v7, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    move-result-object v0

    goto :goto_0

    .line 351
    :cond_1
    const-string v7, "sort_by"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 352
    sget-object v7, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$Serializer;

    invoke-virtual {v7, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    move-result-object v2

    goto :goto_0

    .line 354
    :cond_2
    const-string v7, "sort_order"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 355
    sget-object v7, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$Serializer;

    invoke-virtual {v7, p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    move-result-object v3

    goto :goto_0

    .line 357
    :cond_3
    const-string v7, "limit"

    invoke-virtual {v7, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 358
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->int32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v7

    invoke-virtual {v7, p1}, Lcom/dropbox/core/stone/StoneSerializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "f_limit":Ljava/lang/Integer;
    check-cast v1, Ljava/lang/Integer;

    .restart local v1    # "f_limit":Ljava/lang/Integer;
    goto :goto_0

    .line 361
    :cond_4
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->skipValue(Lcom/fasterxml/jackson/core/JsonParser;)V

    goto :goto_0

    .line 364
    .end local v4    # "field":Ljava/lang/String;
    :cond_5
    new-instance v6, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v7

    invoke-direct {v6, v0, v2, v3, v7}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;-><init>(Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;I)V

    .line 369
    .local v6, "value":Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;
    if-nez p2, :cond_6

    .line 370
    invoke-static {p1}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->expectEndObject(Lcom/fasterxml/jackson/core/JsonParser;)V

    .line 372
    :cond_6
    return-object v6

    .line 367
    .end local v0    # "f_filterBy":Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;
    .end local v1    # "f_limit":Ljava/lang/Integer;
    .end local v2    # "f_sortBy":Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;
    .end local v3    # "f_sortOrder":Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;
    .end local v6    # "value":Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;
    :cond_7
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
    .line 311
    invoke-virtual {p0, p1, p2}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->deserialize(Lcom/fasterxml/jackson/core/JsonParser;Z)Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;

    move-result-object v0

    return-object v0
.end method

.method public serialize(Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V
    .locals 2
    .param p1, "value"    # Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;
    .param p2, "g"    # Lcom/fasterxml/jackson/core/JsonGenerator;
    .param p3, "collapse"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fasterxml/jackson/core/JsonGenerationException;
        }
    .end annotation

    .prologue
    .line 316
    if-nez p3, :cond_0

    .line 317
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeStartObject()V

    .line 319
    :cond_0
    const-string v0, "filter_by"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 320
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->filterBy:Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy$Serializer;->serialize(Lcom/dropbox/core/v2/paper/ListPaperDocsFilterBy;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 321
    const-string v0, "sort_by"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 322
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortBy:Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy$Serializer;->serialize(Lcom/dropbox/core/v2/paper/ListPaperDocsSortBy;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 323
    const-string v0, "sort_order"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 324
    sget-object v0, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$Serializer;

    iget-object v1, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->sortOrder:Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder$Serializer;->serialize(Lcom/dropbox/core/v2/paper/ListPaperDocsSortOrder;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 325
    const-string v0, "limit"

    invoke-virtual {p2, v0}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeFieldName(Ljava/lang/String;)V

    .line 326
    invoke-static {}, Lcom/dropbox/core/stone/StoneSerializers;->int32()Lcom/dropbox/core/stone/StoneSerializer;

    move-result-object v0

    iget v1, p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;->limit:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1, p2}, Lcom/dropbox/core/stone/StoneSerializer;->serialize(Ljava/lang/Object;Lcom/fasterxml/jackson/core/JsonGenerator;)V

    .line 327
    if-nez p3, :cond_1

    .line 328
    invoke-virtual {p2}, Lcom/fasterxml/jackson/core/JsonGenerator;->writeEndObject()V

    .line 330
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
    .line 311
    check-cast p1, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;

    invoke-virtual {p0, p1, p2, p3}, Lcom/dropbox/core/v2/paper/ListPaperDocsArgs$Serializer;->serialize(Lcom/dropbox/core/v2/paper/ListPaperDocsArgs;Lcom/fasterxml/jackson/core/JsonGenerator;Z)V

    return-void
.end method
