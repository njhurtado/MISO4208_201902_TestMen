.class public final Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;
.super Lcom/dropbox/core/util/Dumpable;
.source "DbxEntry.java"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/v1/DbxEntry;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "WithChildrenC"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/dropbox/core/v1/DbxEntry$WithChildrenC$ReaderMaybeDeleted;,
        Lcom/dropbox/core/v1/DbxEntry$WithChildrenC$Reader;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<C:",
        "Ljava/lang/Object;",
        ">",
        "Lcom/dropbox/core/util/Dumpable;",
        "Ljava/io/Serializable;"
    }
.end annotation


# static fields
.field public static final serialVersionUID:J


# instance fields
.field public final children:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TC;"
        }
    .end annotation
.end field

.field public final entry:Lcom/dropbox/core/v1/DbxEntry;

.field public final hash:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/dropbox/core/v1/DbxEntry;Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .param p1, "entry"    # Lcom/dropbox/core/v1/DbxEntry;
    .param p2, "hash"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v1/DbxEntry;",
            "Ljava/lang/String;",
            "TC;)V"
        }
    .end annotation

    .prologue
    .line 762
    .local p0, "this":Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;, "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC<TC;>;"
    .local p3, "children":Ljava/lang/Object;, "TC;"
    invoke-direct {p0}, Lcom/dropbox/core/util/Dumpable;-><init>()V

    .line 763
    iput-object p1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->entry:Lcom/dropbox/core/v1/DbxEntry;

    .line 764
    iput-object p2, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->hash:Ljava/lang/String;

    .line 765
    iput-object p3, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->children:Ljava/lang/Object;

    .line 766
    return-void
.end method


# virtual methods
.method protected dumpFields(Lcom/dropbox/core/util/DumpWriter;)V
    .locals 2
    .param p1, "w"    # Lcom/dropbox/core/util/DumpWriter;

    .prologue
    .line 820
    .local p0, "this":Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;, "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC<TC;>;"
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->entry:Lcom/dropbox/core/v1/DbxEntry;

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->v(Lcom/dropbox/core/util/Dumpable;)Lcom/dropbox/core/util/DumpWriter;

    .line 821
    const-string v0, "hash"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->hash:Ljava/lang/String;

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->v(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 822
    iget-object v0, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->children:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 823
    const-string v0, "children"

    invoke-virtual {p1, v0}, Lcom/dropbox/core/util/DumpWriter;->f(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    move-result-object v0

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->children:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/dropbox/core/util/DumpWriter;->verbatim(Ljava/lang/String;)Lcom/dropbox/core/util/DumpWriter;

    .line 825
    :cond_0
    return-void
.end method

.method public equals(Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC",
            "<*>;)Z"
        }
    .end annotation

    .prologue
    .local p0, "this":Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;, "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC<TC;>;"
    .local p1, "o":Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;, "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC<*>;"
    const/4 v0, 0x0

    .line 800
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->children:Ljava/lang/Object;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->children:Ljava/lang/Object;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->children:Ljava/lang/Object;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 805
    :cond_0
    :goto_0
    return v0

    .line 800
    :cond_1
    iget-object v1, p1, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->children:Ljava/lang/Object;

    if-nez v1, :cond_0

    .line 802
    :cond_2
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->entry:Lcom/dropbox/core/v1/DbxEntry;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->entry:Lcom/dropbox/core/v1/DbxEntry;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 803
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->hash:Ljava/lang/String;

    if-eqz v1, :cond_4

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->hash:Ljava/lang/String;

    iget-object v2, p1, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->hash:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    :cond_3
    const/4 v0, 0x1

    goto :goto_0

    .line 803
    :cond_4
    iget-object v1, p1, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->hash:Ljava/lang/String;

    if-eqz v1, :cond_3

    goto :goto_0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2
    .param p1, "o"    # Ljava/lang/Object;

    .prologue
    .line 795
    .local p0, "this":Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;, "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC<TC;>;"
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    check-cast p1, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;

    .end local p1    # "o":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->equals(Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hashCode()I
    .locals 4

    .prologue
    .local p0, "this":Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;, "Lcom/dropbox/core/v1/DbxEntry$WithChildrenC<TC;>;"
    const/4 v2, 0x0

    .line 811
    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->entry:Lcom/dropbox/core/v1/DbxEntry;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 812
    .local v0, "result":I
    mul-int/lit8 v3, v0, 0x1f

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->hash:Ljava/lang/String;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->hash:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    :goto_0
    add-int v0, v3, v1

    .line 813
    mul-int/lit8 v1, v0, 0x1f

    iget-object v3, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->children:Ljava/lang/Object;

    if-eqz v3, :cond_0

    iget-object v2, p0, Lcom/dropbox/core/v1/DbxEntry$WithChildrenC;->children:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_0
    add-int v0, v1, v2

    .line 814
    return v0

    :cond_1
    move v1, v2

    .line 812
    goto :goto_0
.end method
