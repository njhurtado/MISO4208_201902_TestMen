.class Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "ExpirationPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "KeyboardPagerAdapter"
.end annotation


# instance fields
.field private mInflater:Landroid/view/LayoutInflater;

.field final synthetic this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;


# direct methods
.method public constructor <init>(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;Landroid/view/LayoutInflater;)V
    .locals 0
    .param p2, "inflater"    # Landroid/view/LayoutInflater;

    .prologue
    .line 225
    iput-object p1, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    .line 226
    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    .line 227
    iput-object p2, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 228
    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0
    .param p1, "container"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I
    .param p3, "object"    # Ljava/lang/Object;

    .prologue
    .line 324
    check-cast p3, Landroid/view/View;

    .end local p3    # "object":Ljava/lang/Object;
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 325
    return-void
.end method

.method public getCount()I
    .locals 1

    .prologue
    .line 329
    const/4 v0, 0x2

    return v0
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 12
    .param p1, "collection"    # Landroid/view/ViewGroup;
    .param p2, "position"    # I

    .prologue
    .line 239
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 240
    .local v1, "res":Landroid/content/res/Resources;
    if-nez p2, :cond_0

    .line 242
    invoke-static {p2}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->access$002(I)I

    .line 243
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/codetroopers/betterpickers/R$layout;->keyboard_text:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 244
    .local v6, "view":Landroid/view/View;
    sget v7, Lcom/codetroopers/betterpickers/R$id;->first:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 245
    .local v2, "v1":Landroid/view/View;
    sget v7, Lcom/codetroopers/betterpickers/R$id;->second:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 246
    .local v3, "v2":Landroid/view/View;
    sget v7, Lcom/codetroopers/betterpickers/R$id;->third:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 247
    .local v4, "v3":Landroid/view/View;
    sget v7, Lcom/codetroopers/betterpickers/R$id;->fourth:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 249
    .local v5, "v4":Landroid/view/View;
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    const/4 v9, 0x0

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 250
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    const/4 v9, 0x1

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 251
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    const/4 v9, 0x2

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 253
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    const/4 v9, 0x3

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 254
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    const/4 v9, 0x4

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 255
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    const/4 v9, 0x5

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 257
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    const/4 v9, 0x6

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 258
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    const/4 v9, 0x7

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 259
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    const/16 v9, 0x8

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 261
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    const/16 v9, 0x9

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 262
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    const/16 v9, 0xa

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 263
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    const/16 v9, 0xb

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 265
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    const/16 v7, 0xc

    if-ge v0, v7, :cond_2

    .line 266
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    aget-object v7, v7, v0

    iget-object v8, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 268
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    aget-object v7, v7, v0

    const-string v8, "%02d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    add-int/lit8 v11, v0, 0x1

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 269
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    aget-object v7, v7, v0

    iget-object v8, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->access$100(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 270
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    aget-object v7, v7, v0

    iget-object v8, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->access$200(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 271
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    aget-object v7, v7, v0

    sget v8, Lcom/codetroopers/betterpickers/R$id;->date_keyboard:I

    const-string v9, "month"

    invoke-virtual {v7, v8, v9}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 272
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mMonths:[Landroid/widget/Button;

    aget-object v7, v7, v0

    sget v8, Lcom/codetroopers/betterpickers/R$id;->date_month_int:I

    add-int/lit8 v9, v0, 0x1

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 265
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 274
    .end local v0    # "i":I
    .end local v2    # "v1":Landroid/view/View;
    .end local v3    # "v2":Landroid/view/View;
    .end local v4    # "v3":Landroid/view/View;
    .end local v5    # "v4":Landroid/view/View;
    .end local v6    # "view":Landroid/view/View;
    :cond_0
    const/4 v7, 0x1

    if-ne p2, v7, :cond_1

    .line 276
    invoke-static {p2}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->access$302(I)I

    .line 277
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->mInflater:Landroid/view/LayoutInflater;

    sget v8, Lcom/codetroopers/betterpickers/R$layout;->keyboard:I

    const/4 v9, 0x0

    invoke-virtual {v7, v8, p1, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v6

    .line 278
    .restart local v6    # "view":Landroid/view/View;
    sget v7, Lcom/codetroopers/betterpickers/R$id;->first:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    .line 279
    .restart local v2    # "v1":Landroid/view/View;
    sget v7, Lcom/codetroopers/betterpickers/R$id;->second:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    .line 280
    .restart local v3    # "v2":Landroid/view/View;
    sget v7, Lcom/codetroopers/betterpickers/R$id;->third:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    .line 281
    .restart local v4    # "v3":Landroid/view/View;
    sget v7, Lcom/codetroopers/betterpickers/R$id;->fourth:I

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 283
    .restart local v5    # "v4":Landroid/view/View;
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    const/4 v9, 0x1

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 284
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    const/4 v9, 0x2

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 285
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    const/4 v9, 0x3

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v2, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 287
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    const/4 v9, 0x4

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 288
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    const/4 v9, 0x5

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 289
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    const/4 v9, 0x6

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v3, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 291
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    const/4 v9, 0x7

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 292
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    const/16 v9, 0x8

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 293
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    const/16 v9, 0x9

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v4, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 295
    iget-object v8, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_left:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v8, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearLeft:Landroid/widget/Button;

    .line 296
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearLeft:Landroid/widget/Button;

    iget-object v8, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->access$100(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 297
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearLeft:Landroid/widget/Button;

    iget-object v8, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->access$200(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 298
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v8, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    const/4 v9, 0x0

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_middle:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    aput-object v7, v8, v9

    .line 299
    iget-object v8, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    sget v7, Lcom/codetroopers/betterpickers/R$id;->key_right:I

    invoke-virtual {v5, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/Button;

    iput-object v7, v8, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearRight:Landroid/widget/Button;

    .line 300
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearRight:Landroid/widget/Button;

    iget-object v8, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->access$100(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 301
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearRight:Landroid/widget/Button;

    iget-object v8, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->access$200(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 303
    const/4 v0, 0x0

    .restart local v0    # "i":I
    :goto_1
    const/16 v7, 0xa

    if-ge v0, v7, :cond_2

    .line 304
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v7, v7, v0

    iget-object v8, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 305
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v7, v7, v0

    const-string v8, "%d"

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 306
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v7, v7, v0

    iget-object v8, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->access$100(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;)Landroid/content/res/ColorStateList;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 307
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v7, v7, v0

    iget-object v8, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    invoke-static {v8}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->access$200(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;)I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 308
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v7, v7, v0

    sget v8, Lcom/codetroopers/betterpickers/R$id;->date_keyboard:I

    const-string v9, "year"

    invoke-virtual {v7, v8, v9}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 309
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mYearNumbers:[Landroid/widget/Button;

    aget-object v7, v7, v0

    sget v8, Lcom/codetroopers/betterpickers/R$id;->numbers_key:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v7, v8, v9}, Landroid/widget/Button;->setTag(ILjava/lang/Object;)V

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 312
    .end local v0    # "i":I
    .end local v2    # "v1":Landroid/view/View;
    .end local v3    # "v2":Landroid/view/View;
    .end local v4    # "v3":Landroid/view/View;
    .end local v5    # "v4":Landroid/view/View;
    .end local v6    # "view":Landroid/view/View;
    :cond_1
    new-instance v6, Landroid/view/View;

    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    iget-object v7, v7, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->mContext:Landroid/content/Context;

    invoke-direct {v6, v7}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 314
    .restart local v6    # "view":Landroid/view/View;
    :cond_2
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    invoke-virtual {v7}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->setLeftRightEnabled()V

    .line 315
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    invoke-virtual {v7}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->updateExpiration()V

    .line 316
    iget-object v7, p0, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker$KeyboardPagerAdapter;->this$0:Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;

    invoke-static {v7}, Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;->access$400(Lcom/codetroopers/betterpickers/expirationpicker/ExpirationPicker;)V

    .line 317
    const/4 v7, 0x0

    invoke-virtual {p1, v6, v7}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    .line 319
    return-object v6
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 334
    if-ne p1, p2, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
