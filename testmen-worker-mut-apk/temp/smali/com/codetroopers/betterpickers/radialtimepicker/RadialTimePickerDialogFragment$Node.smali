.class Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
.super Ljava/lang/Object;
.source "RadialTimePickerDialogFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Node"
.end annotation


# instance fields
.field private mChildren:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;",
            ">;"
        }
    .end annotation
.end field

.field private mLegalKeys:[I

.field final synthetic this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;


# direct methods
.method public varargs constructor <init>(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;[I)V
    .locals 1
    .param p2, "legalKeys"    # [I

    .prologue
    .line 1137
    iput-object p1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->this$0:Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1138
    iput-object p2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->mLegalKeys:[I

    .line 1139
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->mChildren:Ljava/util/ArrayList;

    .line 1140
    return-void
.end method


# virtual methods
.method public addChild(Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;)V
    .locals 1
    .param p1, "child"    # Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    .prologue
    .line 1143
    iget-object v0, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1144
    return-void
.end method

.method public canReach(I)Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    .locals 4
    .param p1, "key"    # I

    .prologue
    const/4 v1, 0x0

    .line 1156
    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->mChildren:Ljava/util/ArrayList;

    if-nez v2, :cond_0

    move-object v0, v1

    .line 1164
    :goto_0
    return-object v0

    .line 1159
    :cond_0
    iget-object v2, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->mChildren:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;

    .line 1160
    .local v0, "child":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    invoke-virtual {v0, p1}, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->containsKey(I)Z

    move-result v3

    if-eqz v3, :cond_1

    goto :goto_0

    .end local v0    # "child":Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;
    :cond_2
    move-object v0, v1

    .line 1164
    goto :goto_0
.end method

.method public containsKey(I)Z
    .locals 2
    .param p1, "key"    # I

    .prologue
    .line 1147
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->mLegalKeys:[I

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 1148
    iget-object v1, p0, Lcom/codetroopers/betterpickers/radialtimepicker/RadialTimePickerDialogFragment$Node;->mLegalKeys:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_0

    .line 1149
    const/4 v1, 0x1

    .line 1152
    :goto_1
    return v1

    .line 1147
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1152
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
