.class Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$2;
.super Ljava/lang/Object;
.source "NumberPickerErrorTextView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;


# direct methods
.method constructor <init>(Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView$2;->this$0:Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;

    invoke-virtual {v0}, Lcom/codetroopers/betterpickers/numberpicker/NumberPickerErrorTextView;->hide()V

    .line 55
    return-void
.end method
