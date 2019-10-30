.class final Lcom/kobakei/ratethisapp/RateThisApp$5;
.super Ljava/lang/Object;
.source "RateThisApp.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/kobakei/ratethisapp/RateThisApp;->showRateDialog(Landroid/content/Context;Landroid/support/v7/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 260
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 263
    invoke-static {}, Lcom/kobakei/ratethisapp/RateThisApp;->access$1400()Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V

    .line 264
    return-void
.end method
