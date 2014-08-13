.class public Lcom/sec/android/app/contacts/magazine/MagazineWidgetRotationProvider;
.super Landroid/content/ContentProvider;
.source "MagazineWidgetRotationProvider.java"


# static fields
.field private static EXTRA_SPAN_X:Ljava/lang/String;

.field private static EXTRA_SPAN_Y:Ljava/lang/String;

.field private static EXTRA_WIDGET_ID:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    const-string v0, "extra_widget_id"

    sput-object v0, Lcom/sec/android/app/contacts/magazine/MagazineWidgetRotationProvider;->EXTRA_WIDGET_ID:Ljava/lang/String;

    .line 29
    const-string v0, "extra_span_x"

    sput-object v0, Lcom/sec/android/app/contacts/magazine/MagazineWidgetRotationProvider;->EXTRA_SPAN_X:Ljava/lang/String;

    .line 30
    const-string v0, "extra_span_y"

    sput-object v0, Lcom/sec/android/app/contacts/magazine/MagazineWidgetRotationProvider;->EXTRA_SPAN_Y:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private magazineWidgetRotation(III)Landroid/os/Bundle;
    .locals 4
    .param p1, "widgetId"    # I
    .param p2, "spanX"    # I
    .param p3, "spanY"    # I

    .prologue
    .line 52
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 53
    .local v2, "returnBundle":Landroid/os/Bundle;
    invoke-virtual {p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 55
    .local v0, "context":Landroid/content/Context;
    invoke-static {v0, p1, p2, p3}, Lcom/sec/android/app/contacts/magazine/MagazineContactIconWidgetProvider;->magazineWidgetRotation(Landroid/content/Context;III)Z

    move-result v1

    .line 58
    .local v1, "isRotationSuccess":Z
    const-string v3, "return magazineWidgetRotation()"

    invoke-virtual {v2, v3, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 59
    return-object v2
.end method


# virtual methods
.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 5
    .param p1, "method"    # Ljava/lang/String;
    .param p2, "arg"    # Ljava/lang/String;
    .param p3, "extras"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, -0x1

    .line 37
    const-string v3, "magazineWidgetRotation()"

    invoke-virtual {v3, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 38
    sget-object v3, Lcom/sec/android/app/contacts/magazine/MagazineWidgetRotationProvider;->EXTRA_SPAN_X:Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 39
    .local v0, "spanX":I
    sget-object v3, Lcom/sec/android/app/contacts/magazine/MagazineWidgetRotationProvider;->EXTRA_SPAN_Y:Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 40
    .local v1, "spanY":I
    sget-object v3, Lcom/sec/android/app/contacts/magazine/MagazineWidgetRotationProvider;->EXTRA_WIDGET_ID:Ljava/lang/String;

    invoke-virtual {p3, v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 42
    .local v2, "widgetId":I
    invoke-direct {p0, v2, v0, v1}, Lcom/sec/android/app/contacts/magazine/MagazineWidgetRotationProvider;->magazineWidgetRotation(III)Landroid/os/Bundle;

    move-result-object v3

    .line 44
    .end local v0    # "spanX":I
    .end local v1    # "spanY":I
    .end local v2    # "widgetId":I
    :goto_0
    return-object v3

    :cond_0
    invoke-super {p0, p1, p2, p3}, Landroid/content/ContentProvider;->call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object v3

    goto :goto_0
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Ljava/lang/String;
    .param p3, "arg2"    # [Ljava/lang/String;

    .prologue
    .line 68
    const/4 v0, 0x0

    return v0
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;

    .prologue
    .line 72
    const/4 v0, 0x0

    return-object v0
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;

    .prologue
    .line 76
    const/4 v0, 0x0

    return-object v0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 80
    const/4 v0, 0x0

    return v0
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # [Ljava/lang/String;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;
    .param p5, "arg4"    # Ljava/lang/String;

    .prologue
    .line 85
    const/4 v0, 0x0

    return-object v0
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 1
    .param p1, "arg0"    # Landroid/net/Uri;
    .param p2, "arg1"    # Landroid/content/ContentValues;
    .param p3, "arg2"    # Ljava/lang/String;
    .param p4, "arg3"    # [Ljava/lang/String;

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method
