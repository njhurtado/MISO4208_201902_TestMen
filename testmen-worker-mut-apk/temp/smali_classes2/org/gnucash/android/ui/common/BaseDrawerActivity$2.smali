.class Lorg/gnucash/android/ui/common/BaseDrawerActivity$2;
.super Ljava/lang/Object;
.source "BaseDrawerActivity.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onCreate(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/gnucash/android/ui/common/BaseDrawerActivity;


# direct methods
.method constructor <init>(Lorg/gnucash/android/ui/common/BaseDrawerActivity;)V
    .locals 0
    .param p1, "this$0"    # Lorg/gnucash/android/ui/common/BaseDrawerActivity;

    .prologue
    .line 131
    iput-object p1, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity$2;->this$0:Lorg/gnucash/android/ui/common/BaseDrawerActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 134
    iget-object v0, p0, Lorg/gnucash/android/ui/common/BaseDrawerActivity$2;->this$0:Lorg/gnucash/android/ui/common/BaseDrawerActivity;

    invoke-virtual {v0, p1}, Lorg/gnucash/android/ui/common/BaseDrawerActivity;->onClickBook(Landroid/view/View;)V

    .line 135
    return-void
.end method
