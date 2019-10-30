.class final Lcom/dropbox/core/android/AuthActivity$1;
.super Ljava/lang/Object;
.source "AuthActivity.java"

# interfaces
.implements Lcom/dropbox/core/android/AuthActivity$SecurityProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/dropbox/core/android/AuthActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 146
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getSecureRandom()Ljava/security/SecureRandom;
    .locals 1

    .prologue
    .line 149
    invoke-static {}, Lcom/dropbox/core/android/FixedSecureRandom;->get()Ljava/security/SecureRandom;

    move-result-object v0

    return-object v0
.end method
