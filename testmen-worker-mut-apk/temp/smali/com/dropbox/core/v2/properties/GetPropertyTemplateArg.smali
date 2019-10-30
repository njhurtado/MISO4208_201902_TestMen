.class public Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg;
.super Ljava/lang/Object;
.source "GetPropertyTemplateArg.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg$Serializer;
    }
.end annotation


# instance fields
.field protected final templateId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 2
    .param p1, "templateId"    # Ljava/lang/String;

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    if-nez p1, :cond_0

    .line 35
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Required value for \'templateId\' is null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 37
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_1

    .line 38
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'templateId\' is shorter than 1"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 40
    :cond_1
    const-string v0, "(/|ptid:).*"

    invoke-static {v0, p1}, Ljava/util/regex/Pattern;->matches(Ljava/lang/String;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 41
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "String \'templateId\' does not match pattern"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 43
    :cond_2
    iput-object p1, p0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg;->templateId:Ljava/lang/String;

    .line 44
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "obj"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 66
    if-ne p1, p0, :cond_1

    move v1, v2

    .line 75
    :cond_0
    :goto_0
    return v1

    .line 70
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v0, p1

    .line 71
    check-cast v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg;

    .line 72
    .local v0, "other":Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg;
    iget-object v3, p0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg;->templateId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg;->templateId:Ljava/lang/String;

    if-eq v3, v4, :cond_2

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg;->templateId:Ljava/lang/String;

    iget-object v4, v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg;->templateId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    :cond_2
    move v1, v2

    goto :goto_0
.end method

.method public getTemplateId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 53
    iget-object v0, p0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg;->templateId:Ljava/lang/String;

    return-object v0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .line 58
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg;->templateId:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-static {v1}, Ljava/util/Arrays;->hashCode([Ljava/lang/Object;)I

    move-result v0

    .line 61
    .local v0, "hash":I
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .prologue
    .line 81
    sget-object v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg$Serializer;

    const/4 v1, 0x0

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public toStringMultiline()Ljava/lang/String;
    .locals 2

    .prologue
    .line 93
    sget-object v0, Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg$Serializer;->INSTANCE:Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg$Serializer;

    const/4 v1, 0x1

    invoke-virtual {v0, p0, v1}, Lcom/dropbox/core/v2/properties/GetPropertyTemplateArg$Serializer;->serialize(Ljava/lang/Object;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
