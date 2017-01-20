unit mvc.Interf;

interface

uses System.Classes, System.SysUtils;

type

  IController = interface;

  IThis<T> = interface
    ['{D6AB571A-3644-43CF-809A-34E1CFD96A78}']
    function This:T;
  end;

  IModel = interface
    ['{FC5669F0-546C-4F0D-B33F-5FB2BA125DBC}']
  end;

  IView = interface
    ['{A1E53BAC-BFCE-4D90-A54F-F8463D597E43}']
    procedure SetController(const AController: IController);
    function This:TObject;
  end;

  IApplicationController = interface
    ['{207C0D66-6586-4123-8817-F84AC0AF29F3}']
    procedure Run(AClass: TComponentClass; var reference; AFunc:TFunc<boolean>   );
    //procedure SetController( const AController:IController);
  end;

  IController = interface
    ['{A7758E82-3AA1-44CA-8160-2DF77EC8D203}']
    function AddView(const AView: IView): integer;
    function IndexOf(const AView: IView): integer;
    procedure Delete(const Index: integer);
    function Count: integer;
    function This:TObject;
    // procedure RemoveView( const AView:IView);
  end;


implementation

end.
