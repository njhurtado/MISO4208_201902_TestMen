.class public Lcom/dropbox/core/v2/paper/Cursor;
.super Ljava/lang/Object;
.source "Cursor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/paper/Cursor$Serializer;
    }
.end annotation


# instance fields
.field protected final expiration:Ljava/util/Date;

.field protected final value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 66
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/dropbox/core/v2/paper/Cursor;-><init>(Ljava/lang/String;Ljava/util/Date;)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/Date;)V
    .locals 2
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "expiration"    # Ljava/util/Date;

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    if-nez p1, :cond_0

    .line 49
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'value\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 51
    :cond_0
    iput-object p1, p0, Lcom/dropbox/core/v2/paper/Cursor;->value:Ljava/lang/String;

    .line 52
    invoke-static {p2}, Lcom/dropbox/core/util/LangUtil;->truncateMillis(Ljava/util/Date;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/dropbox/core/v2/paper/Cursor;->expiration:Ljava/util/Date;

    .line 53
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 110
    if-ne p1, p0, :cond_1

    .line 121
    :cond_0
    :goto_0
    return v1

    .line 114
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    move-object v0, p1

    .line 115
    check-cast v0, Lcom/dropbox/core/v2/paper/Cursor;

    .line 116
    .local v0, "other":Lcom/dropbox/core/v2/paper/Cursor;
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/Cursor;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/Cursor;->value:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/Cursor;->value:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/Cursor;->value:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    :cond_2
    iget-object v3, p0, Lcom/dropbox/core/v2/paper/Cursor;->expiration:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/Cursor;->expiration:Ljava/util/Date;

    if-eq v3, v4, :cond_0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/Cursor;->expiration:Ljava/util/Date;

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/Cursor;->expiration:Ljava/util/Date;

    iget-object v4, v0, Lcom/dropbox/core/v2/paper/Cursor;->expiration:Ljava/util/Date;

    .line 117
    invoke-virtual {v3, v4}, Ljava/util/Date;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    :cond_3
    move v1, v2

    goto :goto_0

    .end local v0    # "other":Lcom/dropbox/core/v2/paper/Cursor;
    :cond_4
    move v1, v2

    .line 121
    goto :goto_0
.end method

.method public getExpiration()Ljava/util/Date;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/Cursor;->expiration:Ljava/util/Date;

    return-object v0
.end method

.method public getValue()Ljava/lang/String;
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/dropbox/core/v2/paper/Cursor;->value:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 101
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/Cursor;->value:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/dropbox/core/v2/paper/Cursor;->expiration:Ljava/util/Date;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 105
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 127
    sget-object v0, Lcom/dropbox/core/v2/paper/Cursor$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/Cursor$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/Cursor$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 139
    sget-object v0, Lcom/dropbox/core/v2/paper/Cursor$Serializer;->INSTANCE:Lcom/dropbox/core/v2/paper/Cursor$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/paper/Cursor$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
