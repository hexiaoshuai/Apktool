.class public Lbaksmali/test/class;
.super Ljava/lang/Object;

.implements Lsome/interface;
.implements Lsome/other/interface;


.field public static aStaticFieldWithoutAnInitializer:I

.field public static longStaticField:J = 0x300000000L
.field public static longNegStaticField:J = -0x300000000L

.field public static intStaticField:I = 0x70000000
.field public static intNegStaticField:I = -500

.field public static shortStaticField:S = 500s
.field public static shortNegStaticField:S = -500s

.field public static byteStaticField:B = 123t
.field public static byteNegStaticField:B = 0xAAt

.field public static floatStaticField:F = 3.1415926f

.field public static doubleStaticField:D = 3.141592653589793

.field public static charStaticField:C = 'a'
.field public static charEscapedStaticField:C = '\n'

.field public static boolTrueStaticField:Z = true
.field public static boolFalseStaticField:Z = false

.field public static typeStaticField:Ljava/lang/Class; = Lbaksmali/test/class;

.field public static stringStaticField:Ljava/lang/String; = "test"
.field public static stringEscapedStaticField:Ljava/lang/String; = "test\ntest"

.field public instanceField:Ljava/lang/String;

.method public constructor <init>()V
    .registers 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V
    return-void
.end method

.method public testMethod(ILjava/lang/String;)Ljava/lang/String;
    .registers 3

    const-string v0, "testing\n123"

    goto switch:
    
    sget v0, Lbaksmali/test/class;->staticField:I

    switch:
    packed-switch v0, pswitch:

    const/4 v0, 7
    const v0, 10

    Label10:
    Label11:
    Label12:
    Label13:
    return-object v0

    .array-data 4
        1 2 3 4 5 6 200
    .end array-data

    pswitch:
    .packed-switch 10
        Label10:
        Label11:
        Label12:
        Label13:
    .end packed-switch

.end method

